import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/buttons/button_bottom_navbar.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/appbar.dart';
import 'package:senior_housing_central/core/common/widgets/background.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';
import 'package:senior_housing_central/features/explore_page/presentation/widgets/explore_screen_card/eligibility_card.dart';
import 'package:senior_housing_central/features/explore_page/presentation/widgets/home_fetures.dart';

class OldAgeAssistanceDetail extends StatelessWidget {
  final String title;

  const OldAgeAssistanceDetail({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: CustomAppBar(
        appbarText: title,
        showLeading: true,
        trailingImage: "assets/images/notifications.png",
      ),
      child: Column(
        children: [
          const Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBoldText(
                    captionText: 'Overview',
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Card(
                      color: AppColors.background,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'A HUD voucher, often referred to as a Section 8 voucher, is a part of the Housing Choice Voucher Program, which is administered by the U.S. Department of Housing and Urban Development (HUD). This program is designed to assist very low-income families, the elderly, and the disabled to afford decent, safe, and sanitary housing in the private market.',
                              style: TextStyle(
                                color: AppColors.textGrayColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                height: 2.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                            SizedBox(height: 15),
                            HomeFeatures(
                              featureText: 'You Likely Qualify',
                              textColor: AppColors.focusedBorderColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: AppBoldText(
                      captionText: 'Eligibility',
                    ),
                  ),
                  TaggableCard(
                    title: 'Income',
                    description:
                        'You must be a U.S. citizen or have eligible immigration status.',
                  ),
                  TaggableCard(
                    title: 'Citizenship/Immigration Status',
                    description:
                        'Your household income must fall below the threshold set by HUD.',
                  ),
                  TaggableCard(
                    title: 'Other Factors',
                    description:
                        'You must have a valid rental agreement with the landlord.',
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: AppBoldText(
                      captionText: 'How It Works',
                    ),
                  ),
                ],
              ),
            ),
          ),
          MainButtonBottomNavbar(
            buttonText: 'Apply Now',
            onButtonPressed: () {},
          ),
        ],
      ),
    );
  }
}
