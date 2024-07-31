import 'package:flutter/material.dart';

import '../../../fuelet_uikit.dart';

class FLTMonocoloredTertiaryButton extends StatelessWidget {
  final Color? fillColor;
  final String? text;
  final Color? textColor;
  final Widget? child;
  final Widget? prefixIcon;
  final VoidCallback onPressed;
  final bool enabled;
  final ButtonSize size;
  final bool hasInfiniteWidth;
  final bool loading;
  final EdgeInsets padding;
  final bool hasFillColor;

  const FLTMonocoloredTertiaryButton({
    required this.onPressed,
    this.fillColor,
    this.enabled = true,
    this.hasInfiniteWidth = true,
    this.loading = false,
    this.size = ButtonSize.xxxsmall,
    this.padding = const EdgeInsets.symmetric(horizontal: 9.5),
    this.hasFillColor = true,
    this.text,
    this.textColor,
    this.child,
    this.prefixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    return NFTTheme(
      data: theme.copyWith(
        buttonThemeData: theme.buttonThemeData.copyWith(
          monocoloredFillColor: hasFillColor
              ? fillColor ?? theme.colorScheme.infoBannerColor
              : Colors.transparent,
          monocoloredFilledTextStyle: NFTTypography.body2Medium.copyWith(
            color: textColor ?? FLTColors.grey6D,
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
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
