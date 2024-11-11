import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class AppMainButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;
  final GlobalKey<FormState>? formKey;
  const AppMainButton({
    super.key,
    required this.buttonText,
    this.formKey,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: const Border(
          bottom: BorderSide(
            color: AppColors.focusedLoginColor,
            width: 4.0,
          ),
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          fixedSize: Size(MediaQuery.sizeOf(context).width, 55),
          backgroundColor: AppColors.unfocusedLoginColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: const TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
