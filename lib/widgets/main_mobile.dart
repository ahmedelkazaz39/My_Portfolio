import 'package:flutter/material.dart';

import '../constants/color_manager.dart';
import 'intro_and_button.dart';

class MainMobile extends StatefulWidget {
  const MainMobile({super.key});

  @override
  State<MainMobile> createState() => _MainMobileState();
}

class _MainMobileState extends State<MainMobile> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 60,
      ),
      child: Column(
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                ColorManager.scaffoldBg.withOpacity(.4),
                ColorManager.scaffoldBg.withOpacity(.4),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              'assets/images/avatar.png',
              width: screenWidth / 4,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: IntroAndButton(),
            ),
          ),
        ],
      ),
    );
  }
}
