import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/bottom_navbar.dart';
import 'package:senior_housing_central/core/mixin/validator.dart';
import 'package:senior_housing_central/features/auth/forget_password/presentation/widgets/forget_button.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/widgets/already_have_account.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/widgets/alternative_signup_text.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/widgets/login_create_text.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/widgets/login_options.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/auth_background_image.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/app_name_icon.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/choose_role.dart';
import 'package:senior_housing_central/core/common/buttons/main_button.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/textfield.dart';
import 'package:senior_housing_central/core/extention/validation_ext.dart';

void main() {
  runApp(const LogInScreen());
}

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> with Validator {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            const AuthBackgroundImage(),
            const AppNameAndIcon(),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 280.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CreateOrLoginAccountText(
                            text: "Log Into Account",
                          ),
                          RoleSelectionRow(
                            onRoleChanged: (String role) {},
                          ),
                          AuthTextfield(
                            controller: _emailController,
                            hintText: 'Email',
                            prifixIcon: 'assets/images/Email.png',
                            validator: (value) {
                              String? emailValidation = value?.emailValidation;
                              if (emailValidation != null) {
                                return emailValidation;
                              }
                              return null;
                            },
                          ),
                          AuthTextfield(
                            controller: _passwordController,
                            obscureText: true,
                            hintText: 'Password',
                            prifixIcon: 'assets/images/User.png',
                            validator: passwordValidator,
                          ),
                          const AppTextButton(text: "Forgett Password"),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: AppMainButton(
                              buttonText: 'Log In',
                              formKey: formKey,
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const CustomBottomNavbar(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                          const AlternativeSignUpText(text: 'Or Log In with'),
                          const OtherLogInOptions(),
                          const AlreadyHaveAccount(
                            promptText: "Don't Have An Account ?",
                            loginText: 'Sign Up',
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
