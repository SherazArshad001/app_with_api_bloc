import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/features/explore_page/presentation/pages/house_detail_page.dart';
import 'package:senior_housing_central/features/explore_page/presentation/widgets/explore_screen_card/housing_card.dart';
import 'package:senior_housing_central/features/explore_page/presentation/widgets/explore_textfield.dart';

class HousingButtonContent extends StatelessWidget {
  const HousingButtonContent({
    super.key,
  });

  void navigateToDetails(
    BuildContext context, {
    required String imagePath,
    required String name,
    required String location,
    required String reviews,
    required String rating,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OldAgeHouseDetails(
          imagePath: imagePath,
          name: name,
          location: location,
          reviews: reviews,
          rating: rating,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchTextField(),
        FilterRow(
          badgeCount: 2,
          onPressed: () {},
          results: 5,
        ),
        OldAgeHouseCard(
          oldAgeHouseImagePath: 'assets/images/houseimage1.png',
          oldAgeHouseName: 'The Garden Plaza',
          oldAgeHouseLocation: 'Anaheim, CA  • ',
          oldAgeHouseReviews: '•  97 Reviews',
          oldAgeHouseFeatures1: "24/7 Concierge",
          oldAgeHouseFeatures2: "Pets Allowed",
          oldAgeHouseFeatures3: "Complimentary Transportation",
          oldAgeHouseRatting: '4.2',
          borderButtonText: 'Add To Compare',
          appSmallButtonText: 'See Details',
          appSmallButtonOnPressed: () {
            navigateToDetails(
              context,
              imagePath: 'assets/images/houseimage1.png',
              name: 'The Garden Plaza',
              location: 'Anaheim, CA  • ',
              reviews: '•  97 Reviews',
              rating: '4.2',
            );
          },
          borderButtonOnPressed: () {},
        ),
        OldAgeHouseCard(
          oldAgeHouseImagePath: 'assets/images/houseimage2.png',
          oldAgeHouseName: 'The Haven',
          oldAgeHouseLocation: 'Newport, CA  • ',
          oldAgeHouseReviews: '•  120 Reviews',
          oldAgeHouseFeatures1: "24/7 Security",
          oldAgeHouseFeatures2: "Fitness Center",
          oldAgeHouseFeatures3: "Daily Meals",
          oldAgeHouseRatting: '4.8',
          borderButtonText: 'Add To Compare',
          appSmallButtonText: 'See Details',
          appSmallButtonOnPressed: () {
            navigateToDetails(
              context,
              imagePath: 'assets/images/houseimage2.png',
              name: 'The Haven',
              location: 'Newport, CA  • ',
              reviews: '•  120 Reviews',
              rating: '4.8',
            );
          },
          borderButtonOnPressed: () {},
        ),
      ],
    );
  }
}

class FilterRow extends StatelessWidget {
  final int badgeCount;
  final VoidCallback onPressed;
  final int results;
  const FilterRow({
    super.key,
    required this.badgeCount,
    required this.onPressed,
    required this.results,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Text(
            "$results Results",
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: onPressed,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  'assets/images/filter.png',
                  width: 40,
                  height: 40,
                ),
                if (badgeCount > 0)
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: AppColors.unfocusedLoginColor,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '$badgeCount',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
