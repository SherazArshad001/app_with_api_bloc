import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/buttons/main_button.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class MainButtonBottomNavbar extends StatelessWidget {
  final String buttonText;
  final VoidCallback onButtonPressed;
  const MainButtonBottomNavbar({
    super.key,
    required this.buttonText,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.background,
          border: Border(
            top: BorderSide(
              color: AppColors.border,
              width: 1,
            ),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: 105,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: AppMainButton(
              buttonText: buttonText,
              onPressed: onButtonPressed,
            ),
          ),
        ),
      ),
    );
  }
}
