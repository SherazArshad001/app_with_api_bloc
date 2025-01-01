import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';
import 'package:senior_housing_central/core/common/widgets/light_text.dart';
import 'package:senior_housing_central/features/application/presentation/widgets/applied_by.dart';
import 'package:senior_housing_central/features/application/presentation/widgets/pending_text_bg.dart';

class ApplicationStatusCard extends StatelessWidget {
  const ApplicationStatusCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.location,
  });

  final String imagePath;
  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          color: AppColors.background,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Hero(
                        tag: imagePath,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            imagePath,
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppBoldText(captionText: name),
                          AppLightText(captionText: location),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'See Details',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: AppColors.focusedLoginColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Divider(
                    thickness: 0.2,
                  ),
                ),
                const AppliedBy(
                  imageApplicant: 'assets/images/userimage.png',
                  appliedDetail:
                      'Annalisa Luiz submitted your application on December 9, 2024',
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          left: 20,
          top: -10,
          child: PendingColorBgText(
            bgColor: AppColors.focusedBorderColor,
            textColor: AppColors.background,
          ),
        ),
      ],
    );
  }
}
