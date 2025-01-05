import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';
import 'package:senior_housing_central/core/common/widgets/light_text.dart';
import 'package:senior_housing_central/features/application/presentation/pages/application_assistance_detail.dart';
import 'package:senior_housing_central/features/application/presentation/widgets/pending_text_bg.dart';

class ApplyAssistanceContent extends StatelessWidget {
  const ApplyAssistanceContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AssitanceApplication(
          applicationName: 'Anaheim HUD Voucher',
          applicationDescription: 'Anaheim Department of Housing',
        ),
        AssitanceApplication(
          applicationName: 'Senior Veterans Voucher',
          applicationDescription: 'Orange County Housing Authority',
        ),
      ],
    );
  }
}

class AssitanceApplication extends StatelessWidget {
  final String applicationName;
  final String applicationDescription;

  const AssitanceApplication({
    super.key,
    required this.applicationName,
    required this.applicationDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.background,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PendingColorBgText(
                  bgColor: AppColors.unfocusedBtn,
                  textColor: AppColors.focusedBorderColor,
                ),
                AppBoldText(captionText: applicationName),
                AppLightText(captionText: applicationDescription),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AssistanceApplicationDetail(
                      applicationName: applicationName,
                      applicationDescription: applicationDescription,
                    ),
                  ),
                );
              },
              icon: const Icon(
                Icons.navigate_next,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
