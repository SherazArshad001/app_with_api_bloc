
import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';
import 'package:senior_housing_central/core/common/widgets/light_text.dart';
import 'package:senior_housing_central/features/profile_page/presentation/widgets/edit_button.dart';

class DocumentCard extends StatelessWidget {
  final String cardImagePath;
  final String cardName;
  final String cardDescription;
  final bool showEditButton;

  const DocumentCard({
    super.key,
    required this.cardImagePath,
    required this.cardName,
    required this.cardDescription,
    this.showEditButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.background,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                cardImagePath,
                fit: BoxFit.cover,
                width: 80,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppBoldText(
                    captionText: cardName,
                  ),
                  AppLightText(captionText: cardDescription),
                ],
              ),
            ),
            showEditButton
                ? const EditButton()
                : const SizedBox(
                    height: 40,
                    width: 40,
                  ),
          ],
        ),
      ),
    );
  }
}
