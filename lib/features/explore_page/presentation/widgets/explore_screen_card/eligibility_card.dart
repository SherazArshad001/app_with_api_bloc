import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';

class TaggableCard extends StatefulWidget {
  final String title;
  final String description;

  const TaggableCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  TaggableCardState createState() => TaggableCardState();
}

class TaggableCardState extends State<TaggableCard> {
  bool _isVisible = false;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: _isVisible ? null : 60,
        child: Card(
          color: AppColors.background,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: AppBoldText(
                      captionText: widget.title,
                    )),
                    IconButton(
                      icon: Icon(
                        _isVisible
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                      ),
                      onPressed: _toggleVisibility,
                    ),
                  ],
                ),
                if (_isVisible)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                    ),
                    child: Text(
                      widget.description,
                      style: const TextStyle(
                        color: AppColors.textGrayColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 1.6,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
