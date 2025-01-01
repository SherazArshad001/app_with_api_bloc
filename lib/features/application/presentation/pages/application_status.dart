import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/appbar.dart';
import 'package:senior_housing_central/core/common/widgets/background.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';
import 'package:senior_housing_central/features/application/presentation/widgets/application_status_card.dart';

class ApplicationStatus extends StatelessWidget {
  final String imagePath;
  final String name;
  final String location;

  const ApplicationStatus({
    super.key,
    required this.imagePath,
    required this.name,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const CustomAppBar(
        showLeading: true,
        appbarText: 'Application Status',
        trailingImage: 'assets/images/notifications.png',
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ApplicationStatusCard(
              imagePath: imagePath,
              name: name,
              location: location,
            ),
            const AppBoldText(captionText: 'Documents'),
            ApplicationListTile(
              listTileText: 'Government-issued ID',
              trailingButtonTap: () {},
              leadingIcon: const Icon(
                Icons.done,
              ),
            ),
            ApplicationListTile(
              listTileText: 'Social Security',
              trailingButtonTap: () {},
              leadingIcon: const Icon(
                Icons.error_outline,
              ),
            ),
            ApplicationListTile(
              listTileText: 'Proof of income',
              trailingButtonTap: () {},
              leadingIcon: const Icon(
                Icons.done,
              ),
            ),
            ApplicationListTile(
              listTileText: 'Recent Bank Statement',
              trailingButtonTap: () {},
              leadingIcon: const Icon(
                Icons.error_outline,
              ),
            ),
            ApplicationListTile(
              listTileText: 'HUD voucher',
              trailingButtonTap: () {},
              leadingIcon: const Icon(
                Icons.done,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ApplicationListTile extends StatelessWidget {
  final String listTileText;
  final VoidCallback trailingButtonTap;
  final Icon leadingIcon;

  const ApplicationListTile({
    super.key,
    required this.listTileText,
    required this.trailingButtonTap,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    bool isDoneIcon = leadingIcon.icon == Icons.done;

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.background,
        child: ListTile(
          leading: Icon(
            leadingIcon.icon,
            color: isDoneIcon
                ? AppColors.focusedBorderColor
                : AppColors.unfocusedLoginColor,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                listTileText,
                style: const TextStyle(
                  color: AppColors.textPrimary,
                ),
              ),
              if (!isDoneIcon)
                Text(
                  'Please provide your $listTileText.',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.unfocusedLoginColor,
                  ),
                ),
            ],
          ),
          trailing: IconButton(
            onPressed: trailingButtonTap,
            icon: const Icon(Icons.navigate_next),
          ),
        ),
      ),
    );
  }
}
