import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/light_text.dart';

class ResourcesTile extends StatelessWidget {
  final String titleText;
  final VoidCallback onTap;
  const ResourcesTile({
    super.key,
    required this.titleText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.background,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              AppLightText(
                captionText: titleText,
                textSize: 14,
              ),
              const Spacer(),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onTap,
                  customBorder: const CircleBorder(),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.navigate_next,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
