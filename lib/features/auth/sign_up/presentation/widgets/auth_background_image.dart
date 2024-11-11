import 'package:flutter/material.dart';

class AuthBackgroundImage extends StatelessWidget {
  final Widget? child;

  const AuthBackgroundImage({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/appbar.png',
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
