import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/appbar.dart';
import 'package:senior_housing_central/core/common/widgets/background.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';
import 'package:senior_housing_central/core/common/widgets/light_text.dart';

class DocumentScreen extends StatelessWidget {
  final String buttonText;
  const DocumentScreen({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: CustomAppBar(
        showLeading: true,
        appbarText: buttonText,
        trailingImage: 'assets/images/notifications.png',
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                const AppBoldText(
                  captionText: 'Documents',
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(0, 0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const AppLightText(
                    captionText: 'Edit',
                  ),
                ),
              ],
            ),
            Card(
              color: AppColors.background,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/userdocument1.png',
                        fit: BoxFit.cover,
                        width: 80,
                        height: 100,
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppBoldText(captionText: 'Drivers License'),
                        AppLightText(captionText: 'PDF added 1 hr ago'),
                      ],
                    ),
                    const Text('data'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
