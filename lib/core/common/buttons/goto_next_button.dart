import 'package:flutter/material.dart';

class GotoNextButton extends StatelessWidget {
  const GotoNextButton({
    super.key,
    required this.navigateNext,
  });

  final VoidCallback navigateNext;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.navigate_next,
      ),
      onPressed: navigateNext,
    );
  }
}
