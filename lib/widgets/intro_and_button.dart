import 'package:flutter/material.dart';

import '../constants/color_manager.dart';
import '../constants/gradient_colors.dart';

class IntroAndButton extends StatelessWidget {
  const IntroAndButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShaderMask(
          shaderCallback: (bounds) {
            return gradient.createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            );
          },
          child: const Text(
            "Hi\nI'm Ahmed Elkazaz \nMobile Developer",
            style: TextStyle(
              fontSize: 30,
              height: 1.5,
              fontWeight: FontWeight.bold,
              // color: ColorManager.whitePrimary,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 250,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorManager.bgLight2,
            ),
            child: ShaderMask(
              shaderCallback: (bounds) {
                return gradient.createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                );
              },
              child: const Text(
                "Get in Touch",
                style: TextStyle(
                  //color: ColorManager.bgLight1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
