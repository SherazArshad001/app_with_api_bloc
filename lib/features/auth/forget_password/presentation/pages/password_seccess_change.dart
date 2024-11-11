import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/background.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/pages/log_in_screen.dart';
import 'package:senior_housing_central/core/common/buttons/main_button.dart';

class PasswordSeccessChange extends StatelessWidget {
  const PasswordSeccessChange({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset(
            'assets/images/success.png',
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Password Changed',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            ' Your password has been changed successfully',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: AppMainButton(
              buttonText: 'Continue to LogIn',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LogInScreen(),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
