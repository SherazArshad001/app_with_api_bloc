import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/widgets/appbar.dart';
import 'package:senior_housing_central/core/common/widgets/background.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';
import 'package:senior_housing_central/features/resources/presentation/widgets/textile.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const CustomAppBar(
        appbarText: 'Resources',
        trailingImage: "assets/images/notifications.png",
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBoldText(
                captionText: 'Browse by Category,',
              ),
              ResourcesTile(
                titleText: 'Caregiver Resources',
                onTap: () {},
              ),
              ResourcesTile(
                titleText: 'Charity & Nonprofit Programs',
                onTap: () {},
              ),
              ResourcesTile(
                titleText: 'Companions & Visitor Programs',
                onTap: () {},
              ),
              ResourcesTile(
                titleText: 'Food & Nutrition Programs',
                onTap: () {},
              ),
              ResourcesTile(
                titleText: 'Health Insurance & Medical Resources',
                onTap: () {},
              ),
              ResourcesTile(
                titleText: 'Household Assistance',
                onTap: () {},
              ),
              ResourcesTile(
                titleText: 'Legal Aid Resources',
                onTap: () {},
              ),
              ResourcesTile(
                titleText: 'State Resources',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
