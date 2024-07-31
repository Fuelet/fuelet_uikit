import 'package:flutter/material.dart';

import '../../../fuelet_uikit.dart';
import 'button_text_style.dart';
import 'button_type.dart';

class FLTMonocoloredRedButton extends StatelessWidget {
  final String? text;
  final Widget? child;
  final Widget? prefixIcon;
  final bool enabled;
  final VoidCallback onPressed;
  final ButtonSize size;
  final bool hasInfiniteWidth;
  final bool loading;

  const FLTMonocoloredRedButton({
    super.key,
    this.text,
    this.child,
    this.prefixIcon,
    this.enabled = true,
    required this.onPressed,
    this.size = ButtonSize.medium,
    this.hasInfiniteWidth = true,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    return NFTTheme(
      data: theme.copyWith(
        buttonThemeData: theme.buttonThemeData.copyWith(
          monocoloredFillColor: FLTColors.malina,
          monocoloredFilledTextStyle:
              getButtonTextStyle(ButtonType.red, size).copyWith(
            color: theme.colorScheme.differentThemeMainColor,
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
          hasInfiniteWidth: hasInfiniteWidth,
          loading: loading,
          child: child,
        ),
      ),
    );
  }
}
