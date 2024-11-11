import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/features/notification/presentation/pages/all_notifications.dart';
import 'package:senior_housing_central/features/notification/presentation/pages/new_notifications.dart';

class SelectButtons extends StatefulWidget {
  final String firstButtonText;
  final String secondButtonText;

  const SelectButtons({
    super.key,
    required this.firstButtonText,
    required this.secondButtonText,
  });

  @override
  SelectButtonsState createState() => SelectButtonsState();
}

class SelectButtonsState extends State<SelectButtons> {
  bool isFirstButtonSelected = true;
  int messageCount = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    isFirstButtonSelected = true;
                  });
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                    color: isFirstButtonSelected
                        ? AppColors.focusedBorderColor
                        : AppColors.unfocusedBorderColor,
                    width: 2,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.firstButtonText,
                      style: TextStyle(
                        color: isFirstButtonSelected
                            ? AppColors.textPrimary
                            : AppColors.textSecondary,
                        fontWeight: FontWeight.w700,
                        fontSize: isFirstButtonSelected ? 16 : 14,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(width: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.unfocusedLoginColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        '$messageCount',
                        style: const TextStyle(
                          color: AppColors.background,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    isFirstButtonSelected = false;
                  });
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                    color: !isFirstButtonSelected
                        ? AppColors.focusedBorderColor
                        : AppColors.unfocusedBorderColor,
                    width: 2,
                  ),
                ),
                child: Text(
                  widget.secondButtonText,
                  style: TextStyle(
                    color: !isFirstButtonSelected
                        ? AppColors.textPrimary
                        : AppColors.textSecondary,
                    fontWeight: FontWeight.w700,
                    fontSize: !isFirstButtonSelected ? 16 : 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        if (isFirstButtonSelected)
          NewNotifications(onMessageCountChanged: updateMessageCount)
        else
          const AllNotifications(),
      ],
    );
  }

  void updateMessageCount(int count) {
    setState(() {
      messageCount = count;
    });
  }
}
