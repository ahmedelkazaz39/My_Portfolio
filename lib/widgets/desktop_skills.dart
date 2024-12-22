import 'package:flutter/material.dart';

import '../constants/color_manager.dart';
import '../constants/skills_item.dart';

class DesktopSkills extends StatelessWidget {
  const DesktopSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //! paltforms
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 450,
            ),
            child: Wrap(
              spacing: 5,
              runSpacing: 5,
              children: [
                for (int i = 0; i < platformItems.length; i++)
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: ColorManager.bgLight2,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      leading: Image.asset(
                        platformItems[i]["img"],
                        width: 32,
                      ),
                      title: Text(platformItems[i]["title"]),
                    ),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        //! skills
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int i = 0; i < skillItems.length; i++)
                  Chip(
                    backgroundColor: ColorManager.bgLight2,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    label: Text(
                      skillItems[i]["title"],
                    ),
                    avatar: Image.asset(
                      skillItems[i]["img"],
                    ),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
