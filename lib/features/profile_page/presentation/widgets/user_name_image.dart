import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/buttons/app_small_button.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';

class ProfileImageName extends StatelessWidget {
  final String imagePath;
  final String userName;
  final String userRole;
  const ProfileImageName({
    super.key,
    required this.imagePath,
    required this.userName,
    required this.userRole,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            imagePath,
            height: 70,
            width: 70,
            fit: BoxFit.cover,
          ),
        ),
        AppBoldText(
          captionText: userName,
        ),
        AppSmallButton(
          onPressed: () {},
          appSmallButtonText: userRole,
          backgroundColor: AppColors.focusedBorderColor,
          useExpanded: false,
          padding: const EdgeInsets.symmetric(horizontal: 20),
        ),
      ],
    );
  }
}
