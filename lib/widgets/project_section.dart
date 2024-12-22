import 'package:flutter/material.dart';

import '../constants/color_manager.dart';
import '../constants/gradient_colors.dart';
import '../utils/project_utils.dart';
import 'project_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          //! title
          ShaderMask(
            shaderCallback: (bounds) {
              return gradient.createShader(
                Rect.fromLTWH(0, 0, bounds.width, bounds.height),
              );
            },
            child: const Text(
              'Work Projects',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: ColorManager.whitePrimary,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),

          //!cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectsUtlis.length; i++)
                  ProjectCardWidget(
                    projectUtils: workProjectsUtlis[i],
                  ),
              ],
            ),
          ),

          const SizedBox(
            height: 50,
          ),
          ShaderMask(
            shaderCallback: (bounds) {
              return gradient.createShader(
                Rect.fromLTWH(0, 0, bounds.width, bounds.height),
              );
            },
            child: const Text(
              'Hobby Projects',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: ColorManager.whitePrimary,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),

          //!cards
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 900,
            ),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < hobbyProjectsUtlis.length; i++)
                  ProjectCardWidget(
                    projectUtils: hobbyProjectsUtlis[i],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
