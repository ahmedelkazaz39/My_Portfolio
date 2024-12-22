import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/project_utils.dart';

import '../constants/color_manager.dart';
import 'dart:js' as js;

import '../constants/gradient_colors.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.projectUtils,
  });

  final ProjectUtils projectUtils;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorManager.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            projectUtils.image,
            height: 160,
            width: 260,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 8),
            child: Text(
              projectUtils.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                //fontSize: 18,
                color: ColorManager.whitePrimary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              projectUtils.subtitle,
              style: const TextStyle(
                fontSize: 10,
                color: ColorManager.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          Container(
            color: ColorManager.bgLight1,
            width: 250,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                ShaderMask(
                  shaderCallback: (bounds) {
                    return gradient.createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    );
                  },
                  child: const Text(
                    'Avaliable on',
                    style: TextStyle(
                      color: ColorManager.yellowSecondary,
                      fontSize: 10,
                    ),
                  ),
                ),
                const Spacer(),
                if (projectUtils.androidLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', [projectUtils.androidLink]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Image.asset(
                        'assets/images/dart.png',
                        width: 17,
                      ),
                    ),
                  ),
                if (projectUtils.iosLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', [projectUtils.iosLink]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Image.asset(
                        'assets/images/flutter.png',
                        width: 17,
                      ),
                    ),
                  ),
                if (projectUtils.githubLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', [projectUtils.githubLink]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Image.asset(
                        'assets/images/flutter.png',
                        width: 17,
                      ),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
