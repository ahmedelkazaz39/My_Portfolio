import 'package:flutter/material.dart';

import '../constants/color_manager.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    this.hintText,
    this.textEditingController,
    this.maxLines = 1,
  });
  final String? hintText;
  final TextEditingController? textEditingController;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      style: const TextStyle(
        color: ColorManager.scaffoldBg,
      ),
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        filled: true,
        fillColor: ColorManager.whiteSecondary,
        focusedBorder: getOutlineInputBorder,
        enabledBorder: getOutlineInputBorder,
        border: getOutlineInputBorder,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: ColorManager.hintDark,
        ),
      ),
      //textAlign: TextAlign.center,
    );
  }

  OutlineInputBorder get getOutlineInputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
