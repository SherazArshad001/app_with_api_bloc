import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/features/explore_page/presentation/pages/assistance_button_content.dart';
import 'package:senior_housing_central/features/explore_page/presentation/pages/housing_button_content.dart';

class SelectableButtons extends StatefulWidget {
  const SelectableButtons({super.key});

  @override
  SelectableButtonsState createState() => SelectableButtonsState();
}

class SelectableButtonsState extends State<SelectableButtons> {
  bool isFirstButtonSelected = true;

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
                child: Text(
                  'Housing',
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
                  'Assistance Programs',
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
          const HousingButtonContent()
        else
          const AssistanceButtonContent(),
      ],
    );
  }
}
