import 'package:flutter/material.dart';
import 'package:senior_housing_central/features/application/presentation/pages/application_status.dart';
import 'package:senior_housing_central/features/application/presentation/widgets/application_card.dart';

class ApplyHousingContent extends StatelessWidget {
  const ApplyHousingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ApplicationsCard(
          appliedImagePath: 'assets/images/houseimage1.png',
          statusText: 'Application Pending',
          imageName: 'The Garden Plaza',
          location: 'Anaheim, CA',
          onBtnTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ApplicationStatus(
                  imagePath: 'assets/images/houseimage1.png',
                  name: 'The Garden Plaza',
                  location: 'Anaheim, CA',
                ),
              ),
            );
          },
        ),
        ApplicationsCard(
          appliedImagePath: 'assets/images/houseimage2.png',
          statusText: 'Application Pending',
          imageName: 'The Legacy',
          location: 'Anaheim, CA',
          onBtnTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ApplicationStatus(
                  imagePath: 'assets/images/houseimage2.png',
                  name: 'The Legacy',
                  location: 'Anaheim, CA',
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
