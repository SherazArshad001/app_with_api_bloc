import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class ReviewWidget extends StatelessWidget {
  final String location;
  final String rating;
  final String reviews;
  final String starImagePath;

  const ReviewWidget({
    super.key,
    required this.location,
    required this.rating,
    required this.reviews,
    required this.starImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: location,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.navbarUnselectedIconColor,
                ),
              ),
            ],
          ),
        ),
        Image.asset(
          starImagePath,
          width: 16,
          height: 16,
        ),
        const SizedBox(width: 4),
        Text(
          rating,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.navbarUnselectedIconColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          reviews,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.navbarUnselectedIconColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
