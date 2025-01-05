import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/features/notification/presentation/pages/notification_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? appbarText;
  final String? leadingButtonText;
  final String? appbarImage;
  final String? trailingImage;
  final bool showLeading;
  final VoidCallback? onTrailingPressed;
  final bool showLeadingTextButton; // Flag to show the TextButton for leading

  final Color backgroundColor;
  final Color titleColor;
  final Color borderColor;
  final Color leadingIconColor;
  final Color trailingIconColor;

  const CustomAppBar({
    super.key,
    this.leadingButtonText,
    this.appbarText,
    this.appbarImage,
    this.trailingImage,
    this.showLeading = false,
    this.onTrailingPressed,
    this.showLeadingTextButton = false,
    this.backgroundColor = AppColors.background,
    this.titleColor = AppColors.textPrimary,
    this.borderColor = AppColors.border,
    this.leadingIconColor = AppColors.textPrimary,
    this.trailingIconColor = AppColors.textPrimary,
  }) : assert(
          appbarText != null || appbarImage != null,
          'Either appbarText or appbarImage must be provided',
        );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      elevation: 0,
      centerTitle: true,
      leading: showLeading
          ? showLeadingTextButton && leadingButtonText != null
              // Show the TextButton only if showLeadingTextButton is true and leadingButtonText is not null
              ? TextButton(
                  onPressed: () {
                    // Handle the TextButton press action
                    Navigator.pop(context);
                  },
                  child: Text(
                    leadingButtonText!,
                    style: TextStyle(
                      color: leadingIconColor,
                    ),
                  ),
                )
              // Else, show the IconButton
              : IconButton(
                  icon: Icon(
                    Icons.navigate_before,
                    color: leadingIconColor,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
          : null,
      title: appbarImage != null
          ? Image.asset(
              appbarImage!,
              fit: BoxFit.contain,
            )
          : Text(
              appbarText ?? '',
              style: TextStyle(
                color: titleColor,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
      actions: [
        if (trailingImage != null)
          IconButton(
            icon: Image.asset(
              trailingImage!,
              fit: BoxFit.contain,
            ),
            onPressed: onTrailingPressed ??
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationScreen(),
                    ),
                  );
                },
            color: trailingIconColor,
          ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: borderColor,
          height: 1.0,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
