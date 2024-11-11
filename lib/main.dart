import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/widgets/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomBottomNavbar(),
    );
  }
}
