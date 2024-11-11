import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/buttons/goto_next_button.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/features/explore_page/presentation/widgets/home_fetures.dart';

class AssistanceContentCard extends StatelessWidget {
  final String cardText;
  final String cardSubtext;
  final String description;
  final String featureText;
  final VoidCallback navigateNext;
  const AssistanceContentCard({
    super.key,
    required this.cardText,
    required this.cardSubtext,
    required this.description,
    required this.featureText,
    required this.navigateNext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Card(
        color: AppColors.background,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardText,
                style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
              Text(
                cardSubtext,
                style: const TextStyle(
                  color: AppColors.textGrayColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        description,
                        style: const TextStyle(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    GotoNextButton(navigateNext: navigateNext)
                  ],
                ),
              ),
              HomeFeatures(
                textColor: AppColors.focusedBorderColor,
                featureText: featureText,
              )
            ],
          ),
        ),
      ),
    );
  }
}
