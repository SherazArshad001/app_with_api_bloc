import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class BorderButton extends StatelessWidget {
  final String borderButtonText;
  final VoidCallback onPressed;
  final Widget? image;
  final bool useExpanded;

  const BorderButton({
    super.key,
    required this.borderButtonText,
    required this.onPressed,
    this.image,
    this.useExpanded = true,
  });

  @override
  Widget build(BuildContext context) {
    final button = OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: AppColors.textPrimary, width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (image != null) ...[
            image!,
            const SizedBox(width: 8),
          ],
          Text(
            borderButtonText,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );

    return useExpanded ? Expanded(child: button) : button;
  }
}
