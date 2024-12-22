import 'package:flutter/material.dart';

import '../constants/color_manager.dart';

BoxDecoration kHeaderDecoration = BoxDecoration(
    gradient: const LinearGradient(
      colors: [
        Colors.transparent,
        ColorManager.bgLight1,
      ],
    ),
    borderRadius: BorderRadius.circular(100));
