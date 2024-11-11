import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/appbar.dart';
import 'package:senior_housing_central/core/common/widgets/background.dart';
import 'package:senior_housing_central/core/common/widgets/description_text.dart';
import 'package:senior_housing_central/core/mixin/validator.dart';
import 'package:senior_housing_central/features/auth/forget_password/presentation/pages/password_seccess_change.dart';
import 'package:senior_housing_central/core/common/buttons/main_button.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/textfield.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen>
    with Validator {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  int _passwordStrength = 0;
  final List<Color> _passwordStrengthColors = [
    AppColors.strengthBarColor,
    AppColors.strengthBarColor,
    AppColors.strengthBarColor,
    AppColors.strengthBarColor,
    AppColors.strengthBarColor,
  ];

  void _updateStrength(String password) {
    setState(() {
      if (password.isEmpty) {
        _passwordStrength = 0;
      } else if (password.length < 6) {
        _passwordStrength = 1;
      } else if (password.length < 8) {
        _passwordStrength = 2;
      } else if (RegExp(r'^(?=.*?[A-Z])(?=.*?[0-9]).{8,}$')
          .hasMatch(password)) {
        _passwordStrength = 3;
      } else if (RegExp(
              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
          .hasMatch(password)) {
        _passwordStrength = 4;
      }

      for (int i = 0; i <= 4; i++) {
        _passwordStrengthColors[i] = i < _passwordStrength
            ? AppColors.selectedColor
            : AppColors.strengthBarColor;
      }
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const CustomAppBar(
        appbarText: 'Forget Password',
        showLeading: true,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Reset Password ?',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const DescriptionText(
              text: "Please type something you’ll remember",
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  AuthTextfield(
                    obscureText: true,
                    hintText: 'Password',
                    prifixIcon: 'assets/images/password.png',
                    controller: _passwordController,
                    validator: passwordValidator,
                    onChanged: (value) {
                      _updateStrength(value);
                    },
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text(
                        'Password Strength',
                        style: TextStyle(color: AppColors.textPrimary),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(4, (index) {
                            return Container(
                              width: 55,
                              height: 5,
                              decoration: BoxDecoration(
                                color: _passwordStrengthColors[index],
                                borderRadius: BorderRadius.circular(5),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  AuthTextfield(
                    obscureText: true,
                    hintText: 'Confirm Password',
                    prifixIcon: 'assets/images/password.png',
                    controller: _confirmPasswordController,
                    validator: (value) {
                      if (value != _passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            const Spacer(),
            AppMainButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PasswordSeccessChange(),
                    ),
                  );
                }
              },
              buttonText: 'Reset Password',
              formKey: formKey,
            ),
          ],
        ),
      ),
    );
  }
}
