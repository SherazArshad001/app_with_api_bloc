import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/widgets/appbar.dart';
import 'package:senior_housing_central/core/common/widgets/background.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';
import 'package:senior_housing_central/features/application/presentation/pages/apply_housing.dart';
import 'package:senior_housing_central/features/profile_page/presentation/pages/document_page.dart';
import 'package:senior_housing_central/features/profile_page/presentation/widgets/profile_card1.dart';
import 'package:senior_housing_central/features/profile_page/presentation/widgets/profile_card2.dart';
import 'package:senior_housing_central/features/profile_page/presentation/widgets/user_name_image.dart';

class ProfileScreen extends StatelessWidget {
  final String? imagePath;
  final String? name;
  const ProfileScreen({
    super.key,
    this.imagePath,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const CustomAppBar(
        appbarText: "My Profile",
        trailingImage: "assets/images/notifications.png",
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ProfileImageName(
                imagePath: 'assets/images/user_image.png',
                userName: 'Cooper Clarke',
                userRole: 'Senior',
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ProfileCard1(
                  imagePath: 'assets/images/filter.png',
                  titleText: 'Applications Submitted',
                  navigateTo: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ApplyHouseDetails(),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ProfileCard2(
                      imagePath: 'assets/images/person.png',
                      cardText: 'Information',
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ProfileCard2(
                      imagePath: 'assets/images/caregiver.png',
                      cardText: 'Caregivers',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ProfileCard2(
                      imagePath: 'assets/images/linkedaccount.png',
                      cardText: 'Linked Account',
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ProfileCard2(
                      imagePath: 'assets/images/document.png',
                      cardText: 'Documents',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DocumentScreen(
                              buttonText: 'My Documents',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ProfileCard1(
                  imagePath: 'assets/images/setting.png',
                  titleText: 'Preferences',
                  navigateTo: () {},
                ),
              ),
              ProfileCard1(
                titleText: 'Settings',
                navigateTo: () {},
                imagePath: 'assets/images/filter.png',
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {},
                  child: const AppBoldText(
                    captionText: 'Log out of your account',
                    textSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
