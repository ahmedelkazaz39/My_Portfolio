import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color_manager.dart';

const gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.centerLeft,
    colors: [
      ColorManager.whiteSecondary,
      ColorManager.yellowPrimary,
      ColorManager.whitePrimary,
    ]);
