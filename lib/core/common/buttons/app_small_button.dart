import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class AppSmallButton extends StatelessWidget {
  final String appSmallButtonText;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final bool useExpanded;
  final EdgeInsetsGeometry padding;

  const AppSmallButton({
    super.key,
    required this.appSmallButtonText,
    required this.onPressed,
    this.backgroundColor = AppColors.focusedLoginColor,
    this.useExpanded = true,
    this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
  });

  @override
  Widget build(BuildContext context) {
    final button = ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: backgroundColor,
        padding: padding,
      ),
      onPressed: onPressed,
      child: Text(
        appSmallButtonText,
        style: const TextStyle(
          color: AppColors.background,
          fontSize: 16,
        ),
      ),
    );

    return useExpanded ? Expanded(child: button) : button;
  }
}
