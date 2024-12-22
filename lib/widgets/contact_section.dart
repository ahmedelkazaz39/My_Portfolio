import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/size.dart';

import '../constants/color_manager.dart';
import '../constants/gradient_colors.dart';
import '../constants/sns_links.dart';
import 'custom_text_feild.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: ColorManager.bgLight1,
      child: Column(
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return gradient.createShader(
                Rect.fromLTWH(0, 0, bounds.width, bounds.height),
              );
            },
            child: const Text(
              'Get In Touch',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                // color: ColorManager.whitePrimary,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 700,
                maxHeight: 100,
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth >= kMinDesktopWidth) {
                    return buildEmailAndNameFiedlDesktop();
                  } else {
                    return buildEmailAndNameFiedlMobile();
                  }
                },
              )),
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: const CustomTextFeild(
              maxLines: 10,
              hintText: 'Your Message',
            ),
          ),
          //! send a message
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width: double.maxFinite,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.yellowSecondary,
                ),
                child: const Text(
                  'Get in Touch',
                  style: TextStyle(
                    color: ColorManager.bgLight1,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),
          const SizedBox(
            height: 15,
          ),
          //! sns buttons likes
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.githubLink]);
                },
                child: Image.asset(
                  'assets/images/dart.png',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/images/dart.png',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/images/dart.png',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/images/dart.png',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/images/dart.png',
                  width: 28,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row buildEmailAndNameFiedlDesktop() {
    return const Row(
      children: [
        Flexible(
          child: CustomTextFeild(
            hintText: 'Your Name',
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Flexible(
          child: CustomTextFeild(
            hintText: 'Your Email',
          ),
        ),
      ],
    );
  }

  Column buildEmailAndNameFiedlMobile() {
    return const Column(
      children: [
        Flexible(
          child: CustomTextFeild(
            hintText: 'Your Name',
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Flexible(
          child: CustomTextFeild(
            hintText: 'Your Email',
          ),
        ),
      ],
    );
  }
}
