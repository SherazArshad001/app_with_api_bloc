import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const CircularIconButton({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shape: const CircleBorder(),
      color: Colors.white,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: SizedBox(
          height: 40,
          width: 40,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(imagePath),
          ),
        ),
      ),
    );
  }
}
