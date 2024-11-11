import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class AppLightText extends StatelessWidget {
  final String captionText;
  final double textSize;
  const AppLightText({
    super.key,
    required this.captionText,
    this.textSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      captionText,
      style: TextStyle(
        color: AppColors.textPrimary,
        fontWeight: FontWeight.w500,
        fontSize: textSize,
        letterSpacing: 0.1,
        height: 1.0,
      ),
    );
  }
}
