import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/features/home_page/presentation/widgets/outlined_button.dart.dart';

class AppCustomCard extends StatelessWidget {
  final String cardText;
  final String descriptionText;
  final String btnImagePath;
  final String btnText;
  final String cardImagePath;
  const AppCustomCard({
    super.key,
    required this.cardText,
    required this.descriptionText,
    required this.btnImagePath,
    required this.btnText,
    required this.cardImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Card(
        color: AppColors.background,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardText,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: AppColors.textPrimary),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        descriptionText,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: AppColors.textSecondary,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    AppOutlinedButton(
                      text: btnText,
                      imagePath: btnImagePath,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 128,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    cardImagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
