import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';
import 'package:senior_housing_central/core/common/widgets/light_text.dart';

class ImagePickerContainer extends StatelessWidget {
  final String documentName;
  final String indicateText;
  const ImagePickerContainer({
    super.key,
    required this.documentName,
    required this.indicateText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.background,
        ),
        height: 60,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBoldText(captionText: documentName),
            AppLightText(captionText: indicateText)
          ],
        ),
      ),
    );
  }
}
