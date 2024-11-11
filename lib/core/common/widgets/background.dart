import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;

  const AppScaffold({super.key, required this.child, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.background,
                  AppColors.backgroundLight,
                  AppColors.backgroundLight,
                  AppColors.backgroundLight,
                ],
              ),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 300,
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/backicon.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          child
        ],
      ),
    );
  }
}
