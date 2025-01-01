import 'package:flutter/material.dart';
import 'package:senior_housing_central/features/notification/presentation/widgets/message.dart';

class NewNotifications extends StatelessWidget {
  final Function(int) onMessageCountChanged;

  const NewNotifications({super.key, required this.onMessageCountChanged});

  @override
  Widget build(BuildContext context) {
    final List<Widget> messages = [
      const Message(
        authorName: 'Financial Assistance Approved',
        imagePath: 'assets/images/appmessageicon.png',
        messageText:
            'Good news! Your HUD financial assistance application has been approved.',
        messageTime: 4,
      ),
      const Message(
        authorName: 'Caregiver Added',
        imagePath: 'assets/images/userimage.png',
        messageText: 'Annalisa Luiz has accepted your invite.',
        messageTime: 2,
      ),
      const Message(
        authorName: 'Welcome',
        imagePath: 'assets/images/appmessageicon.png',
        messageText:
            "Welcome to Senior Housing Central! All new notifications will appear here to help you keep track of new activity.",
        messageTime: 10,
      ),
    ];

    WidgetsBinding.instance.addPostFrameCallback((_) {
      onMessageCountChanged(messages.length);
    });

    return Column(
      children: messages,
    );
  }
}
