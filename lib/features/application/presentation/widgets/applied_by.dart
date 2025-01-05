import 'package:flutter/material.dart';

class AppliedBy extends StatelessWidget {
  final String imageApplicant;
  final String appliedDetail;
  const AppliedBy({
    super.key,
    required this.imageApplicant,
    required this.appliedDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClipOval(
          child: Image.asset(
            imageApplicant,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            appliedDetail,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
