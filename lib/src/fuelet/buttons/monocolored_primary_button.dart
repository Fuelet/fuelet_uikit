import 'package:flutter/material.dart';

import '../../../fuelet_uikit.dart';
import 'button_text_style.dart';
import 'button_type.dart';

class FLTMonocoloredPrimaryButton extends StatelessWidget {
  final String? text;
  final Color? textColor;
  final Widget? child;
  final Widget? prefixIcon;
  final bool enabled;
  final VoidCallback onPressed;
  final ButtonSize size;
  final bool loading;

  const FLTMonocoloredPrimaryButton({
    super.key,
    this.text,
    this.textColor,
    this.child,
    this.prefixIcon,
    this.enabled = true,
    required this.onPressed,
    this.size = ButtonSize.medium,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    return NFTTheme(
      data: theme.copyWith(
        buttonThemeData: theme.buttonThemeData.copyWith(
          monocoloredFillColor: theme.colorScheme.primaryBtnBackgroundColor,
          monocoloredFilledTextStyle:
              getButtonTextStyle(ButtonType.primary, size).copyWith(
            color: theme.colorScheme.primaryBtnTxtColor,
          ),
          borderRadius: size.heightInPixels / 2,
        ),
      ),
      child: SizedBox(
        height: size.heightInPixels,
        child: NFTMonocoloredButton(
          onPressed: onPressed,
          text: text,
          prefixIcon: prefixIcon,
          enabled: enabled,
          size: size,
          loading: loading,
          child: child,
        ),
      ),
    );
  }
}
