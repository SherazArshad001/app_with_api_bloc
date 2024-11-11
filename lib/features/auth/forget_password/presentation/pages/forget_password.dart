import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/appbar.dart';
import 'package:senior_housing_central/core/common/widgets/background.dart';
import 'package:senior_housing_central/core/common/widgets/description_text.dart';
import 'package:senior_housing_central/features/auth/forget_password/presentation/pages/reset_password.dart';
import 'package:senior_housing_central/core/common/buttons/main_button.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/textfield.dart';
import 'package:senior_housing_central/core/extention/validation_ext.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const CustomAppBar(
        showLeading: true,
        appbarText: 'Forget Password',
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Forget Password ?',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const DescriptionText(
              text:
                  'Don’t worry! It happens. Please enter the email associated with your account.',
            ),
            Form(
              key: formKey,
              child: AuthTextfield(
                hintText: 'Email address',
                prifixIcon: 'assets/images/Email.png',
                controller: _emailController,
                validator: (value) {
                  String? emailValidation = value?.emailValidation;
                  if (emailValidation != null) {
                    return emailValidation;
                  }
                  return null;
                },
              ),
            ),
            const DescriptionText(
              text:
                  "We've sent a link to your email address. Use the link to reset your password.",
            ),
            const Spacer(),
            AppMainButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResetPasswordScreen(),
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
