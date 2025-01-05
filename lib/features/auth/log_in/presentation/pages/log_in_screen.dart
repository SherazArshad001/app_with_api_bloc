import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senior_housing_central/features/auth/forget_password/presentation/widgets/forget_button.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/bloc/login_bloc.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/bottom_navbar.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/bloc/login_state.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/widgets/login_create_text.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/auth_background_image.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/app_name_icon.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/choose_role.dart';
import 'package:senior_housing_central/core/common/buttons/main_button.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/textfield.dart';
import 'package:senior_housing_central/core/extention/validation_ext.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Scaffold(
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
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Password cannot be empty';
                              }
                              if (value.length < 6) {
                                return 'Password must be at least 6 characters';
                              }
                              return null;
                            },
                          ),
                          const AppTextButton(text: "Forget Password"),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: BlocConsumer<LoginBloc, LoginState>(
                              listener: (context, state) {
                                if (state is LoginSuccess) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const CustomBottomNavbar(),
                                    ),
                                  );
                                }
                                if (state is LoginFailure) {
                                  // Show error message
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(state.error)),
                                  );
                                }
                              },
                              builder: (context, state) {
                                if (state is LoginLoading) {
                                  return const CircularProgressIndicator();
                                }
                                return AppMainButton(
                                  buttonText: 'Log In',
                                  formKey: formKey,
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      context.read<LoginBloc>().add(
                                            LoginSubmitted(
                                              email: _emailController.text,
                                              password:
                                                  _passwordController.text,
                                            ),
                                          );
                                    }
                                  },
                                );
                              },
                            ),
                          ),
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
