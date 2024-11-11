import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';

class Message extends StatelessWidget {
  final String authorName;
  final String imagePath;
  final String messageText;
  const Message({
    super.key,
    required this.authorName,
    required this.imagePath,
    required this.messageText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: ClipOval(
            child: Image.asset(
              imagePath,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          title: AppBoldText(
            textSize: 16,
            captionText: authorName,
          ),
          subtitle: Text(messageText),
        ),
        const Divider(
          color: AppColors.grayColor,
          thickness: 1,
          height: 10,
        ),
      ],
    );
  }
}
