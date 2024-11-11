import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';

class ProfileCard2 extends StatelessWidget {
  final String imagePath;
  final String cardText;
  final VoidCallback onTap;

  const ProfileCard2({
    super.key,
    required this.imagePath,
    required this.cardText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Ink(
          height: 90,
          width: 170,
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                color: AppColors.focusedBorderColor,
                height: 30,
                width: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              AppBoldText(
                captionText: cardText,
                textSize: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
