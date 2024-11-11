import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class AppBoldText extends StatelessWidget {
  final String captionText;
  final double textSize;
  const AppBoldText({
    super.key,
    required this.captionText,
    this.textSize = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      captionText,
      style: TextStyle(
        color: AppColors.textPrimary,
        fontWeight: FontWeight.w700,
        fontSize: textSize,
        letterSpacing: 0.3,
        height: 2.0,
      ),
    );
  }
}
