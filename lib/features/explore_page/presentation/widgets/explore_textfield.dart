import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        labelText: 'Location',
        labelStyle: const TextStyle(color: AppColors.navbarUnselectIconColor),
        hintStyle: const TextStyle(color: AppColors.navbarUnselectIconColor),
        suffixIcon:
            const Icon(Icons.search, color: AppColors.navbarSelectIconColor),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: AppColors.navbarUnselectIconColor),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.navbarSelectIconColor),
          borderRadius: BorderRadius.circular(15),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      ),
    );
  }
}
