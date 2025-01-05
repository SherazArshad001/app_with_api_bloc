import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/buttons/button_bottom_navbar.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/appbar.dart';
import 'package:senior_housing_central/core/common/buttons/border_button.dart';

class OldAgeHouseDetails extends StatefulWidget {
  final String imagePath;
  final String name;
  final String location;
  final String reviews;
  final String rating;

  const OldAgeHouseDetails({
    super.key,
    required this.imagePath,
    required this.name,
    required this.location,
    required this.reviews,
    required this.rating,
  });

  @override
  OldAgeHouseDetailsState createState() => OldAgeHouseDetailsState();
}

class OldAgeHouseDetailsState extends State<OldAgeHouseDetails> {
  String? appliedImagePath;
  String? appliedName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 300),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              widget.imagePath,
              fit: BoxFit.cover,
            ),
            Container(
              height: 250,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.imageGradientStart,
                    AppColors.imageGradientEnd,
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
            CustomAppBar(
              backgroundColor: Colors.transparent,
              leadingIconColor: Colors.white,
              appbarText: widget.name,
              titleColor: Colors.white,
              showLeading: true,
              trailingImage: "assets/images/notifications2.png",
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                width: 100,
                height: 5,
                decoration: BoxDecoration(
                  color: AppColors.grayColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        BorderButton(
                          borderButtonText: 'Add to Compare',
                          onPressed: () {},
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        BorderButton(
                          borderButtonText: 'Add to favorites',
                          onPressed: () {},
                          image: Image.asset('assets/images/favorite.png'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.name,
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary),
                    ),
                    Row(
                      children: [
                        Text(widget.location),
                        Image.asset('assets/images/rattingstar.png'),
                        const SizedBox(width: 3),
                        Text(widget.rating),
                        const SizedBox(width: 10),
                        Text(widget.reviews),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      child: Text(
                        'The Garden Plaza is the ideal community for seniors looking to thoroughly enjoy their retirement in a resort-style setting.Here, our associates believe that residents should be able to make each day one to remember – we will take care of the details.With an entertaining social schedule, wellness programs, fine dining and other services, our goal is to promote a healthy, carefree retirement that satisfies your needs and interests.',
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            MainButtonBottomNavbar(
              buttonText: 'Apply',
              onButtonPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
