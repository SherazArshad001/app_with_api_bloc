import 'package:flutter/material.dart';
import 'package:senior_housing_central/features/explore_page/presentation/pages/assistance_detail_page.dart';
import 'package:senior_housing_central/features/explore_page/presentation/pages/housing_button_content.dart';
import 'package:senior_housing_central/features/explore_page/presentation/widgets/explore_screen_card/assistance_card.dart';
import 'package:senior_housing_central/features/explore_page/presentation/widgets/explore_textfield.dart';

class AssistanceButtonContent extends StatelessWidget {
  const AssistanceButtonContent({super.key});

  void _navigateToDetail(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OldAgeAssistanceDetail(title: title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchTextField(),
        FilterRow(badgeCount: 3, onPressed: () {}, results: 3),
        AssistanceContentCard(
          cardText: 'Anaheim HUD Voucher',
          cardSubtext: 'Anaheim Department of Housing',
          description:
              'Short description of program goes here. A couple of sentences about it.',
          featureText: 'You Likely Qualify',
          navigateNext: () => _navigateToDetail(context, 'Anaheim HUD Voucher'),
        ),
        AssistanceContentCard(
          cardText: 'Senior Veterans Voucher',
          cardSubtext: 'Orange County Housing Authority',
          description:
              'Short description of program goes here. A couple of sentences about it.',
          featureText: 'You Likely Qualify',
          navigateNext: () =>
              _navigateToDetail(context, 'Senior Veterans Voucher'),
        ),
        AssistanceContentCard(
          cardText: 'The Heartstring Program',
          cardSubtext: 'North Hills Community Church',
          description:
              'Short description of program goes here. A couple of sentences about it.',
          featureText: 'You Likely Qualify',
          navigateNext: () =>
              _navigateToDetail(context, 'The Heartstring Program'),
        ),
      ],
    );
  }
}
