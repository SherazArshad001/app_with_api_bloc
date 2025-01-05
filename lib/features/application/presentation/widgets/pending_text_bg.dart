import 'package:flutter/material.dart';

class PendingColorBgText extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  const PendingColorBgText({
    super.key,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Application Pending',
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
