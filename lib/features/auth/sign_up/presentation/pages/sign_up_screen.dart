import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/bottom_navbar.dart';
import 'package:senior_housing_central/core/mixin/validator.dart';
import 'package:senior_housing_central/core/extention/validation_ext.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/widgets/already_have_account.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/widgets/alternative_signup_text.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/widgets/login_create_text.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/widgets/login_options.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/auth_background_image.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/app_name_icon.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/choose_role.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/textfield.dart';
import 'package:senior_housing_central/core/common/buttons/main_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> with Validator {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool showCaregiverFields = false;
  double passwordStrength = 0;
  String selectedRole = 'Senior';
  List<Color> _strengthColors = [
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey
  ];

  @override
  void dispose() {
    _emailController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _updatePasswordStrength(String value) {
    setState(() {
      passwordStrength = _calculatePasswordStrength(value);
      _updateStrengthColors(passwordStrength);
    });
  }

  double _calculatePasswordStrength(String password) {
    if (password.isEmpty) return 0;

    double strength = 0;
    if (password.length >= 8) strength += 0.25;
    if (RegExp(r'[A-Z]').hasMatch(password)) strength += 0.25;
    if (RegExp(r'[0-9]').hasMatch(password)) strength += 0.25;
    if (RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password)) strength += 0.25;

    return strength;
  }

  void _updateStrengthColors(double strength) {
    _strengthColors = List.generate(
        4,
        (index) =>
            index < strength * 4 ? AppColors.selectedColor : Colors.grey);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
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
                            text: 'Create Account',
                          ),
                          RoleSelectionRow(
                            onRoleChanged: (role) {
                              setState(() {
                                selectedRole = role;
                                showCaregiverFields = (role == 'Caregiver');
                              });
                            },
                          ),
                          const SizedBox(height: 10),
                          AuthTextfield(
                            hintText: '$selectedRole First Name',
                            prifixIcon: 'assets/images/User.png',
                            controller: _firstNameController,
                            validator: validateFullName,
                          ),
                          AuthTextfield(
                            hintText: '$selectedRole Last Name',
                            prifixIcon: 'assets/images/User.png',
                            controller: _lastNameController,
                            validator: validateFullName,
                          ),
                          AuthTextfield(
                            hintText: 'Email',
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
                          if (showCaregiverFields) ...[
                            AuthTextfield(
                              validator: passwordValidator,
                              obscureText: true,
                              hintText: 'Password',
                              prifixIcon: 'assets/images/password.png',
                              controller: _passwordController,
                              onChanged: _updatePasswordStrength,
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Text(
                                  'Password Strength:',
                                  style:
                                      TextStyle(color: AppColors.textPrimary),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(4, (index) {
                                      return Container(
                                        width: 55,
                                        height: 5,
                                        decoration: BoxDecoration(
                                          color: _strengthColors[index],
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                          const SizedBox(height: 20),
                          AppMainButton(
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
                            buttonText: 'Sign Up',
                            formKey: formKey,
                          ),
                          const AlternativeSignUpText(text: 'Or Sign Up with'),
                          const OtherLogInOptions(),
                          const AlreadyHaveAccount(
                            promptText: "Already Have An Account ?",
                            loginText: 'Log in',
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
