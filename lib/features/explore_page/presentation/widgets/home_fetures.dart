import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class HomeFeatures extends StatelessWidget {
  final String featureText;
  final Color? textColor;
  const HomeFeatures({
    super.key,
    required this.featureText,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        children: [
          const Icon(
            Icons.done,
            color: AppColors.focusedBorderColor,
            size: 20,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            featureText,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
