import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class RoleSelectButton extends StatelessWidget {
  final String roleName;
  final bool isSelected;
  final VoidCallback onSelected;

  const RoleSelectButton({
    super.key,
    required this.roleName,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected,
      child: Container(
        width: 170,
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.background : AppColors.backgroundLight,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: isSelected
                ? AppColors.focusedBorderColor
                : AppColors.unfocusedBorderColor,
            width: 2,
          ),
        ),
        child: Text(
          roleName,
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
