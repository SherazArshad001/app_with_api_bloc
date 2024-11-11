import 'package:flutter/material.dart';
import 'package:senior_housing_central/features/auth/sign_up/presentation/widgets/sign_up_option_icon.dart';

class OtherLogInOptions extends StatelessWidget {
  const OtherLogInOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularIconButton(
            imagePath: 'assets/images/apple.png',
            onTap: () {},
          ),
          const SizedBox(width: 30),
          CircularIconButton(
            imagePath: 'assets/images/google.png',
            onTap: () {},
          ),
          const SizedBox(width: 30),
          CircularIconButton(
            imagePath: 'assets/images/facebook.png',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
