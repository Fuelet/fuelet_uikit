import 'package:flutter/material.dart';

import '../../../fuelet_uikit.dart';
import 'button_text_style.dart';
import 'button_type.dart';

class FLTMonocoloredRedSecondaryButton extends StatelessWidget {
  final String? text;
  final Widget? child;
  final Widget? prefixIcon;
  final bool enabled;
  final VoidCallback onPressed;
  final ButtonSize size;
  final bool hasInfiniteWidth;
  final bool loading;
  final EdgeInsets padding;

  const FLTMonocoloredRedSecondaryButton({
    super.key,
    this.text,
    this.child,
    this.prefixIcon,
    this.enabled = true,
    required this.onPressed,
    this.size = ButtonSize.medium,
    this.hasInfiniteWidth = true,
    this.loading = false,
    this.padding = EdgeInsets.zero,
  });

  TextStyle get _textStyle {
    return getButtonTextStyle(ButtonType.primary, size).copyWith(
      color: FLTColors.malina,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    return NFTTheme(
      data: theme.copyWith(
        buttonThemeData: theme.buttonThemeData.copyWith(
          monocoloredFillColor: FLTColors.malina.withOpacity(.1),
          monocoloredFilledTextStyle: _textStyle,
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
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
