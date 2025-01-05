import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/buttons/goto_next_button.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/core/common/widgets/appbar.dart';
import 'package:senior_housing_central/core/common/widgets/background.dart';
import 'package:senior_housing_central/core/common/widgets/bold_text.dart';
import 'package:senior_housing_central/core/common/widgets/light_text.dart';
import 'package:senior_housing_central/features/profile_page/presentation/widgets/document_card.dart';
import 'package:senior_housing_central/features/profile_page/presentation/widgets/image_picker_container.dart';

class DocumentScreen extends StatelessWidget {
  final String buttonText;
  const DocumentScreen({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: CustomAppBar(
        showLeading: true,
        appbarText: buttonText,
        trailingImage: 'assets/images/notifications.png',
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const RowContent(
              leadingText: 'Documents',
              trailingIconText: 'Edit',
            ),
            const DocumentCard(
              cardImagePath: 'assets/images/userdocument1.png',
              cardName: 'Drivers License',
              cardDescription: 'PDF added 1 hr ago',
            ),
            const SizedBox(
              height: 10,
            ),
            const DocumentCard(
              cardImagePath: 'assets/images/userdocument1.png',
              cardName: 'Drivers License',
              cardDescription: 'PDF added 1 hr ago',
              showEditButton: false,
            ),
            const Spacer(),
            const ImagePickerContainer(
              documentName: 'Add Proof of Income',
              indicateText: 'Click to upload or take photo',
            ),
            const ImagePickerContainer(
              documentName: 'Add Proof of Income',
              indicateText: 'Click to upload or take photo',
            ),
            const ImagePickerContainer(
              documentName: 'Add Proof of Income',
              indicateText: 'Click to upload or take photo',
            ),
            const Spacer(),
            const RowContent(
              leadingText: 'Folder',
              trailingIconText: 'Edit',
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.folder_outlined,
                    color: AppColors.focusedBorderColor,
                  ),
                ),
                title: const AppBoldText(captionText: 'Personal Documents'),
                subtitle: const AppLightText(captionText: '0 files'),
                trailing: GotoNextButton(
                  navigateNext: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RowContent extends StatelessWidget {
  final String leadingText;
  final String trailingIconText;
  const RowContent({
    super.key,
    required this.leadingText,
    required this.trailingIconText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppBoldText(
          captionText: leadingText,
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: const Size(0, 0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: AppLightText(
            captionText: trailingIconText,
          ),
        ),
      ],
    );
  }
}
