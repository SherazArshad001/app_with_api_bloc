import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class AppNameAndIcon extends StatelessWidget {
  const AppNameAndIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Image.asset('assets/images/Vector.png'),
        ),
        const SizedBox(
          height: 30,
        ),
        const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              'Senior Housing\nCentral',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        )
      ],
    );
  }
}
