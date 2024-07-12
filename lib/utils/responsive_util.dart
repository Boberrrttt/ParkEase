// lib/utils/responsive_util.dart

import 'package:flutter/material.dart';

class ResponsiveUtil {
  late double screenWidth;
  late double screenHeight;
  late double horizontalPadding;
  late double verticalPadding;
  late double responsiveWidth;

  ResponsiveUtil(BuildContext context) {
    // Get the screen dimensions
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    // Calculate responsive padding
    horizontalPadding = screenWidth * 0.05; // 5% of screen width
    verticalPadding = screenHeight * 0.1; // 10% of screen height

    // Get the responsive width
    responsiveWidth = screenWidth * 0.9; // 90% of screen width
  }
}
