import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class AppOutlinedButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPressed;

  const AppOutlinedButton({
    super.key,
    required this.text,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: AppColors.textPrimary, width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: 20,
            height: 20,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 15),
          Text(
            text,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
