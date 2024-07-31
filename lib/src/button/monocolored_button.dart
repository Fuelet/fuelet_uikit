import 'package:flutter/material.dart';

import '../../fuelet_uikit.dart';

class NFTMonocoloredButton extends StatelessWidget {
  final Color? textColor;
  final String? text;
  final Widget? child;
  final Widget? prefixIcon;
  final bool enabled;
  final bool hasInfiniteWidth;
  final VoidCallback onPressed;
  final ButtonSize size;
  final bool loading;
  final EdgeInsets padding;

  const NFTMonocoloredButton({
    this.text,
    this.textColor,
    this.child,
    this.prefixIcon,
    this.enabled = true,
    this.hasInfiniteWidth = true,
    required this.onPressed,
    required this.size,
    this.loading = false,
    this.padding = EdgeInsets.zero,
    super.key,
  }) : assert(text != null || child != null,
            'Either text or child must not be null');

  Widget? getLoader(BuildContext context) => SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: NFTTheme.of(context).colorScheme.backgroundColor,
        ),
      );

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    Widget childWidget = FittedBox(
      child: child ??
          Text(
            text ?? '',
            style: theme.buttonThemeData.monocoloredFilledTextStyle.copyWith(
              color: textColor,
            ),
          ),
    );

    if (prefixIcon != null) {
      childWidget = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: size.iconSize,
            width: size.iconSize,
            child: prefixIcon!,
          ),
          const SizedBox(width: 6),
          childWidget,
        ],
      );
    }

    return Opacity(
      opacity: enabled ? 1.0 : 0.2,
      child: RawMaterialButton(
        padding: padding,
        fillColor: theme.buttonThemeData.monocoloredFillColor,
        elevation: .0,
        highlightElevation: .0,
        highlightColor: Colors.transparent,
        hoverElevation: .0,
        splashColor: Colors.transparent,
        enableFeedback: false,
        constraints: BoxConstraints(
          minHeight: theme.buttonThemeData.minSize,
          minWidth: hasInfiniteWidth ? double.maxFinite : 0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            theme.buttonThemeData.borderRadius,
          ),
        ),
        onPressed: enabled && !loading ? onPressed : null,
        child: loading ? getLoader(context) : childWidget,
      ),
    );
  }
}
