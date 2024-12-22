import 'package:flutter/material.dart';

import '../constants/color_manager.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    const gradient = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.centerLeft,
        colors: [
          ColorManager.whiteSecondary,
          ColorManager.yellowPrimary,
          ColorManager.whitePrimary,
        ]);
    return GestureDetector(
      onTap: onTap,
      child: ShaderMask(
        shaderCallback: (bounds) {
          return gradient.createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          );
        },
        child: const Text(
          'AM',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: ColorManager.yellowSecondary,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
