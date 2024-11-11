import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/buttons/main_button.dart';

class HomeScreenCard extends StatelessWidget {
  final String profileCompleteText;
  final String profileMisingThingsText;
  final String profileImagePath;

  const HomeScreenCard({
    super.key,
    required this.profileCompleteText,
    required this.profileMisingThingsText,
    required this.profileImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.background,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          profileCompleteText,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ),
                      Text(
                        profileMisingThingsText,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: AppColors.textSecondary,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                ClipOval(
                  child: Image.asset(
                    profileImagePath,
                    fit: BoxFit.cover,
                    width: 64,
                    height: 64,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            AppMainButton(
              buttonText: 'Complete My Profile',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
