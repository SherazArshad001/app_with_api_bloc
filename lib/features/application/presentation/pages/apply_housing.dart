import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/widgets/appbar.dart';
import 'package:senior_housing_central/core/common/widgets/background.dart';
import 'package:senior_housing_central/features/application/presentation/widgets/content_change_button.dart';

class ApplyHouseDetails extends StatefulWidget {
  const ApplyHouseDetails({
    super.key,
  });

  @override
  ApplyHouseDetailsState createState() => ApplyHouseDetailsState();
}

class ApplyHouseDetailsState extends State<ApplyHouseDetails> {
  bool isAssistanceSelected = false;

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      appBar: CustomAppBar(
        showLeading: true,
        appbarText: 'Application Submitted',
        trailingImage: 'assets/images/notifications.png',
      ),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            ApplicationButton(),
          ],
        ),
      ),
    );
  }
}
