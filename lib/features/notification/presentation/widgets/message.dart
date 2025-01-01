import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';

class Message extends StatelessWidget {
  final String authorName;
  final String imagePath;
  final String messageText;
  final int messageTime;
  final bool showTrailingIcon;
  final VoidCallback? onTrailingPressed;

  const Message({
    super.key,
    required this.authorName,
    required this.imagePath,
    required this.messageText,
    required this.messageTime,
    this.showTrailingIcon = false,
    this.onTrailingPressed,
  });

  String _formatTime(int messageTime) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(messageTime * 1000);
    DateFormat dateFormat = DateFormat("hh:mm a");
    return dateFormat.format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: const Border(
            bottom: BorderSide(
              color: AppColors.grayColor,
              width: 1.0,
            ),
          ),
        ),
        child: ListTile(
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
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                messageText,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                  maxLines: 1,
                  _formatTime(messageTime),
                  style: const TextStyle(
                    color: AppColors.navbarUnselectedIconColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          trailing: showTrailingIcon
              ? Material(
                  color: Colors.transparent,
                  shape: const CircleBorder(),
                  child: InkWell(
                    onTap: onTrailingPressed ?? () {},
                    customBorder: const CircleBorder(),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.navigate_next,
                        size: 24,
                      ),
                    ),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
