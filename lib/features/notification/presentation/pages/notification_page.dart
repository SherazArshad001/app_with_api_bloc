import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/widgets/appbar.dart';
import 'package:senior_housing_central/core/common/widgets/background.dart';
import 'package:senior_housing_central/features/notification/presentation/widgets/buttons.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      appBar: CustomAppBar(
        showLeading: true,
        appbarText: 'Notifications',
      ),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            SelectButtons(
              firstButtonText: 'New',
              secondButtonText: 'View All',
            )
          ],
        ),
      ),
    );
  }
}
