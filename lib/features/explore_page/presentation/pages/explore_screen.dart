import 'package:flutter/material.dart';

import 'package:senior_housing_central/core/common/widgets/appbar.dart';
import 'package:senior_housing_central/core/common/widgets/background.dart';

import 'package:senior_housing_central/features/explore_page/presentation/widgets/screen_change_button.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      appBar: CustomAppBar(
        appbarText: 'Explore',
        trailingImage: "assets/images/notifications.png",
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              SelectableButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
