import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/buttons/goto_next_button.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';

class ProfileCard1 extends StatelessWidget {
  final String imagePath;
  final String titleText;
  final VoidCallback navigateTo;
  const ProfileCard1({
    super.key,
    required this.imagePath,
    required this.titleText,
    required this.navigateTo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.background,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                imagePath,
              ),
            ),
            AppBoldText(
              captionText: titleText,
              textSize: 16,
            ),
            GotoNextButton(
              navigateNext: navigateTo,
            )
          ],
        ),
      ),
    );
  }
}
