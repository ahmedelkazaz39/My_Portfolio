import 'package:flutter/material.dart';

import '../constants/color_manager.dart';
import '../constants/gradient_colors.dart';
import '../constants/nav_items.dart';
import '../styles/decoration_style.dart';
import 'site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTap});
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      decoration: kHeaderDecoration,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: TextButton(
                onPressed: () {
                  onNavMenuTap(i);
                },
                child: ShaderMask(
                  shaderCallback: (bounds) {
                    return gradient.createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    );
                  },
                  child: Text(
                    navTitles[i],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      // color: ColorManager.whitePrimary,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
