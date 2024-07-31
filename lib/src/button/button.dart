import 'package:flutter/material.dart';

import '../theme/theme.dart';
import '../theme/theme_data.dart';
import 'theme_data.dart';

enum NFTButtonStyle {
  normal,
  accent,
  monocoloredAccent,
  monocoloredNonAccent,
}

extension NFTButtonStyleX on NFTButtonStyle {
  bool get isAccent => this == NFTButtonStyle.accent;

  bool get isMonocolored =>
      this == NFTButtonStyle.monocoloredAccent ||
      this == NFTButtonStyle.monocoloredNonAccent;
  bool get isMonocoloredAccent => this == NFTButtonStyle.monocoloredAccent;
  bool get isMonocoloredNonAccent =>
      this == NFTButtonStyle.monocoloredNonAccent;
}

class NFTButton extends StatelessWidget {
  final String text;
  final Widget? child;
  final NFTButtonStyle style;
  final bool enabled;

  final VoidCallback onPressed;

  const NFTButton({
    required this.text,
    this.child,
    this.style = NFTButtonStyle.accent,
    this.enabled = true,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);
    final buttonTheme = theme.buttonThemeData;

    final TextStyle textStyle = _getTextStyle(style, buttonTheme);

    Widget button = AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: double.infinity,
      height: buttonTheme.minSize,
      decoration: BoxDecoration(
        gradient: !style.isAccent || style.isMonocolored
            ? null
            : buttonTheme.gradient,
        borderRadius:
            BorderRadius.all(Radius.circular(buttonTheme.borderRadius)),
      ),
      child: ElevatedButton(
        style: buttonTheme.materialButtonStyle,
        onPressed: enabled ? onPressed : null,
        child: child ??
            Text(
              text,
              textAlign: TextAlign.center,
              style: textStyle,
            ),
      ),
    );

    if (!style.isAccent && !style.isMonocolored) {
      final kInnerDecoration = _getTransparentInnerDecoration(theme);

      final kGradientBoxDecoration = BoxDecoration(
        gradient: buttonTheme.gradient,
        borderRadius:
            BorderRadius.all(Radius.circular(buttonTheme.borderRadius)),
      );

      button = Container(
        decoration: kGradientBoxDecoration,
        height: buttonTheme.minSize,
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            decoration: kInnerDecoration,
            child: button,
          ),
        ),
      );
    }

    if (style.isMonocolored) {
      final kInnerDecoration = _getTransparentInnerDecoration(theme);

      button = Container(
        decoration: BoxDecoration(
          color: style.isMonocoloredAccent
              ? buttonTheme.monocoloredAccentBorderColor
              : buttonTheme.monocoloredNonAccentBorderColor,
          borderRadius:
              BorderRadius.all(Radius.circular(buttonTheme.borderRadius)),
        ),
        height: buttonTheme.minSize,
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            decoration: kInnerDecoration,
            child: button,
          ),
        ),
      );
    }

    return AnimatedOpacity(
      opacity: enabled ? 1 : 0.2,
      duration: const Duration(milliseconds: 150),
      child: button,
    );
  }

  BoxDecoration _getTransparentInnerDecoration(NFTThemeData theme) =>
      BoxDecoration(
        color: theme.colorScheme.backgroundColor,
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.all(
            Radius.circular(theme.buttonThemeData.borderRadius)),
      );

  TextStyle _getTextStyle(
      NFTButtonStyle style, NFTButtonThemeData buttonTheme) {
    switch (style) {
      case NFTButtonStyle.normal:
        return buttonTheme.nonAccentTextStyle;
      case NFTButtonStyle.accent:
        return buttonTheme.textStyle;
      case NFTButtonStyle.monocoloredAccent:
        return buttonTheme.monocoloredAccentTextStyle;
      case NFTButtonStyle.monocoloredNonAccent:
        return buttonTheme.monocoloredNonAccentTextStyle;
    }
  }
}
