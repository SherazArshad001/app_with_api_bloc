import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';
import 'package:senior_housing_central/core/common/widgets/light_text.dart';
import 'package:senior_housing_central/features/application/presentation/widgets/pending_text_bg.dart';

class ApplicationsCard extends StatelessWidget {
  final String appliedImagePath;
  final String statusText;
  final String imageName;
  final String location;
  final VoidCallback onBtnTap;
  const ApplicationsCard({
    super.key,
    required this.appliedImagePath,
    required this.statusText,
    required this.imageName,
    required this.location,
    required this.onBtnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.background,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Hero(
                tag: appliedImagePath,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    appliedImagePath,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PendingColorBgText(
                    bgColor: AppColors.unfocusedBtn,
                    textColor: AppColors.focusedBorderColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppBoldText(captionText: imageName),
                  AppLightText(captionText: location),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: onBtnTap,
                icon: const Icon(
                  Icons.navigate_next,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
