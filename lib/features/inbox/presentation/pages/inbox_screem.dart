import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/widgets/appbar.dart';
import 'package:senior_housing_central/core/common/widgets/background.dart';
import 'package:senior_housing_central/features/explore_page/presentation/widgets/explore_textfield.dart';
import 'package:senior_housing_central/features/notification/presentation/widgets/message.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      appBar: CustomAppBar(
        showLeadingTextButton: true,
        showLeading: true,
        leadingButtonText: 'Edit',
        appbarText: 'Inbox',
        trailingImage: "assets/images/notifications.png",
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              SearchTextField(),
              SizedBox(
                height: 10,
              ),
              Message(
                authorName: 'The Legacy',
                imagePath: 'assets/images/messageimage1.png',
                messageText: 'We’re reviewing your application and w',
                messageTime: 2,
                showTrailingIcon: true,
              ),
              Message(
                authorName: 'The Garden Plaza',
                imagePath: 'assets/images/messageimage2.png',
                messageText: 'We’re reviewing your application and w...',
                messageTime: 2,
                showTrailingIcon: true,
              ),
              Message(
                authorName: 'Anaheim Housing Authority',
                imagePath: 'assets/images/messageimage3.png',
                messageText: 'We’re reviewing your application and w...',
                messageTime: 2,
                showTrailingIcon: true,
              ),
              Message(
                authorName: 'Annalisa Luiz',
                imagePath: 'assets/images/messageimage4.png',
                messageText: 'We’re reviewing your application and w...',
                messageTime: 2,
                showTrailingIcon: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
