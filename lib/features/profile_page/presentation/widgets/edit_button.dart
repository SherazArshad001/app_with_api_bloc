import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';

class EditButton extends StatefulWidget {
  const EditButton({super.key});

  @override
  EditButtonState createState() => EditButtonState();
}

class EditButtonState extends State<EditButton> {
  final GlobalKey _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          key: _key,
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.focusedBorderColor,
              width: 2,
            ),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.edit,
              size: 20,
              color: AppColors.focusedBorderColor,
            ),
            onPressed: () {
              _showCustomMenu(context);
            },
          ),
        ),
      ],
    );
  }

  void _showCustomMenu(BuildContext context) async {
    final RenderBox button =
        _key.currentContext!.findRenderObject() as RenderBox;
    final size = button.size;
    final position = button.localToGlobal(Offset.zero);

    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        position.dx,
        position.dy + size.height + 10,
        position.dx + size.width - 325,
        position.dy + size.height + 200.0,
      ),
      items: [
        PopupMenuItem<String>(
          value: 'option1',
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text('Rename File'),
            ),
          ),
        ),
        PopupMenuItem<String>(
          value: 'option2',
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text('Move to folder'),
            ),
          ),
        ),
        PopupMenuItem<String>(
          value: 'option3',
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text('Delete'),
            ),
          ),
        ),
      ],
      elevation: 8.0,
      color: AppColors.background,
    );
  }
}
