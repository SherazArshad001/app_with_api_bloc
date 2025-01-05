import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/utils/shared_preference/shared_preference_helper.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/pages/log_in_screen.dart';
import 'package:senior_housing_central/core/common/widgets/bottom_navbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize SharedPreferences
  await SharedPreferencesHelper.init();

  // Check login status after initialization
  bool isLoggedIn = SharedPreferencesHelper.isLoggedIn();

  // Run the app with the login status
  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLoggedIn ? const CustomBottomNavbar() : LogInScreen(),
    );
  }
}
