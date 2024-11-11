import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class AuthTextfield extends StatelessWidget {
  final String hintText;
  final String prifixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const AuthTextfield({
    super.key,
    required this.hintText,
    required this.prifixIcon,
    this.obscureText = false,
    this.validator,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: TextFormField(
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        controller: controller,
        validator: validator,
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: Image.asset(prifixIcon),
          labelText: hintText,
          hintStyle: const TextStyle(color: AppColors.textSecondary),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.unfocusedBorderColor,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.focusedBorderColor,
              width: 2.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.errorTextFieldColor,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
