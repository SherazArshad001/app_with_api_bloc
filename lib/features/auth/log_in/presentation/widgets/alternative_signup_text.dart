import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class AlternativeSignUpText extends StatelessWidget {
  final String text;
  const AlternativeSignUpText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          const Expanded(
            child: Divider(
              color: AppColors.textPrimary,
              thickness: 0.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              text,
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          const Expanded(
            child: Divider(
              color: AppColors.textPrimary,
              thickness: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
