import 'package:flutter/material.dart';

import '../button/button.dart';
import '../theme/constants/typography.dart';
import '../theme/theme.dart';

class NFTDialog extends StatelessWidget {
  final String title;
  final String text;
  final TextStyle? titleStyle;
  final TextStyle? textStyle;
  final List<Widget>? actions;
  final VoidCallback? onConfirm;

  const NFTDialog({
    required this.title,
    required this.text,
    this.titleStyle,
    this.textStyle,
    this.actions,
    this.onConfirm,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    return AlertDialog(
      title: Text(
        title,
        style: titleStyle ??
            NFTTypography.header3SemiBold
                .copyWith(color: theme.colorScheme.mainTextColor),
      ),
      content: Text(
        text,
        style: textStyle ??
            NFTTypography.body1Normal
                .copyWith(color: theme.colorScheme.mainTextColor),
      ),
      backgroundColor: theme.colorScheme.backgroundColor,
      actionsAlignment: MainAxisAlignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      buttonPadding: const EdgeInsets.symmetric(horizontal: 24),
      titlePadding: const EdgeInsets.only(
        top: 24,
        left: 24,
        right: 24,
      ),
      contentPadding: const EdgeInsets.only(
        top: 24,
        left: 24,
        right: 24,
      ),
      actions: actions ??
          [
            NFTButton(
              text: 'OK',
              onPressed: onConfirm ?? () => Navigator.of(context).pop(),
            ),
          ],
    );
  }
}
