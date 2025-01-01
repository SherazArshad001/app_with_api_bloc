import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/buttons/app_small_button.dart';
import 'package:senior_housing_central/core/common/buttons/border_button.dart';
import 'package:senior_housing_central/features/explore_page/presentation/widgets/home_fetures.dart';
import 'package:senior_housing_central/features/explore_page/presentation/widgets/review_widget.dart';

class OldAgeHouseCard extends StatelessWidget {
  final String oldAgeHouseImagePath;
  final String oldAgeHouseName;
  final String oldAgeHouseLocation;
  final String oldAgeHouseReviews;
  final String oldAgeHouseFeatures1;
  final String oldAgeHouseFeatures2;
  final String oldAgeHouseFeatures3;
  final String oldAgeHouseRatting;
  final String borderButtonText;
  final String appSmallButtonText;
  final VoidCallback appSmallButtonOnPressed;
  final VoidCallback borderButtonOnPressed;

  const OldAgeHouseCard({
    super.key,
    required this.oldAgeHouseImagePath,
    required this.oldAgeHouseName,
    required this.oldAgeHouseLocation,
    required this.oldAgeHouseReviews,
    required this.oldAgeHouseRatting,
    required this.oldAgeHouseFeatures1,
    required this.oldAgeHouseFeatures2,
    required this.oldAgeHouseFeatures3,
    required this.borderButtonText,
    required this.appSmallButtonText,
    required this.appSmallButtonOnPressed,
    required this.borderButtonOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.asset(
                  oldAgeHouseImagePath,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  oldAgeHouseName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ReviewWidget(
                      location: oldAgeHouseLocation,
                      rating: oldAgeHouseRatting,
                      reviews: oldAgeHouseReviews,
                      starImagePath: 'assets/images/rattingstar.png',
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                HomeFeatures(
                  featureText: oldAgeHouseFeatures1,
                ),
                HomeFeatures(
                  featureText: oldAgeHouseFeatures2,
                ),
                HomeFeatures(
                  featureText: oldAgeHouseFeatures3,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BorderButton(
                  borderButtonText: borderButtonText,
                  onPressed: borderButtonOnPressed,
                ),
                const SizedBox(width: 8),
                AppSmallButton(
                  appSmallButtonText: appSmallButtonText,
                  onPressed: appSmallButtonOnPressed,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
