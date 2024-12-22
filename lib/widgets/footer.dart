import 'package:flutter/material.dart';

import '../constants/color_manager.dart';
import '../constants/gradient_colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: ShaderMask(
        shaderCallback: (bounds) {
          return gradient.createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          );
        },
        child: const Text(
          'Made by Ahmed Elkazaz with Flutter',
          style: TextStyle(
            // fontSize: 22,
            fontWeight: FontWeight.w400,
            color: ColorManager.whiteSecondary,
          ),
        ),
      ),
    );
  }
}
