import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/appbar.dart';
import 'package:senior_housing_central/core/common/widgets/background.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';
import 'package:senior_housing_central/core/common/widgets/light_text.dart';
import 'package:senior_housing_central/features/application/presentation/widgets/applied_by.dart';
import 'package:senior_housing_central/features/application/presentation/widgets/pending_text_bg.dart';

class AssistanceApplicationDetail extends StatelessWidget {
  final String applicationName;
  final String applicationDescription;
  const AssistanceApplicationDetail({
    super.key,
    required this.applicationName,
    required this.applicationDescription,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const CustomAppBar(
        appbarText: 'Application Status',
        showLeading: true,
        trailingImage: 'assets/images/notifications.png',
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AssistanceStatusCard(
                applicationName: applicationName,
                applicationDescription: applicationDescription,
              ),
              const AppBoldText(captionText: 'Your Application'),
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: Text(
                          'Personal Information',
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20),
                        child: Text(
                          'First Name',
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20),
                        child: Text(
                          'Cooper',
                          style: TextStyle(
                            color: AppColors.textGrayColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20),
                        child: Text(
                          'Middle Initial',
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20),
                        child: Text(
                          'M',
                          style: TextStyle(
                            color: AppColors.textGrayColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20),
                        child: Text(
                          'Place of Birth',
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20),
                        child: Text(
                          'Sacramento, CA',
                          style: TextStyle(
                            color: AppColors.textGrayColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20),
                        child: Text(
                          'Date of Birth',
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AssistanceStatusCard extends StatelessWidget {
  const AssistanceStatusCard({
    super.key,
    required this.applicationName,
    required this.applicationDescription,
  });

  final String applicationName;
  final String applicationDescription;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          color: AppColors.background,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBoldText(captionText: applicationName),
                    AppLightText(captionText: applicationDescription),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'See Details',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppColors.focusedLoginColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Divider(
                    thickness: 0.2,
                  ),
                ),
                const AppliedBy(
                  imageApplicant: 'assets/images/userimage.png',
                  appliedDetail:
                      'Annalisa Luiz submitted your application on December 9, 2024',
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          left: 20,
          top: -10,
          child: PendingColorBgText(
            bgColor: AppColors.focusedBorderColor,
            textColor: AppColors.background,
          ),
        ),
      ],
    );
  }
}
