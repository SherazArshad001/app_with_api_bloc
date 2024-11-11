import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/widgets/appbar.dart';

import 'package:senior_housing_central/core/common/widgets/background.dart';
import 'package:senior_housing_central/features/home_page/presentation/widgets/common_card.dart';
import 'package:senior_housing_central/features/home_page/presentation/widgets/home_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      appBar: CustomAppBar(
        showLeading: false,
        appbarImage: 'assets/images/applogo.png',
        trailingImage: "assets/images/notifications.png",
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              HomeScreenCard(
                profileCompleteText: 'Profile 75% Complete',
                profileMisingThingsText:
                    'Your profile is almost complete. Finish it to apply for housing and financial assistance programs.',
                profileImagePath: 'assets/images/user_image.png',
              ),
              AppCustomCard(
                cardText: 'Housing',
                descriptionText: 'You qualify for 6 properties in your area.',
                btnImagePath: 'assets/images/housing.png',
                btnText: 'Explore Housing',
                cardImagePath: 'assets/images/image0.jpeg',
              ),
              AppCustomCard(
                cardText: 'Rental Assistance',
                descriptionText:
                    'You qualify for 3 financial assistance programs.',
                btnImagePath: 'assets/images/program.png',
                btnText: 'Explore Programs',
                cardImagePath: 'assets/images/image2.png',
              ),
              AppCustomCard(
                cardText: 'Annalisa Luiz',
                descriptionText:
                    'You qualify for 3 financial assistance programs.',
                btnImagePath: 'assets/images/program.png',
                btnText: 'Explore Programs',
                cardImagePath: 'assets/images/image2.png',
              )
            ],
          ),
        ),
      ),
    );
  }
}
