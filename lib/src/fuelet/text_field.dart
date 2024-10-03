import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../fuelet_uikit.dart';

class FLTTextField extends StatelessWidget {
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final String? hintText;
  final Color hintTextColor;
  final BorderRadius borderRadius;
  final bool obscureText;
  final int? maxLines;
  final int? minLines;
  final TextAlign textAlign;
  final Color? textColor;
  final Widget? icon;
  final Color? iconColor;
  final EdgeInsets? additionalContentPadding;
  final BoxBorder? border;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Color backgroundColor;
  final double? height;
  final List<ContextMenuButtonType> contextMenuItems;
  final Widget? suffixIcon;

  const FLTTextField({
    this.suffixIcon,
    this.focusNode,
    this.controller,
    this.hintText,
    this.hintTextColor = FLTColors.grey6D,
    required this.borderRadius,
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.textAlign = TextAlign.start,
    this.textColor,
    this.icon,
    this.iconColor,
    this.additionalContentPadding,
    this.border,
    this.keyboardType = TextInputType.multiline,
    this.inputFormatters,
    this.backgroundColor = EVOColors.lightBackground,
    this.height,
    this.contextMenuItems = const [
      ContextMenuButtonType.copy,
      ContextMenuButtonType.cut,
      ContextMenuButtonType.paste,
      ContextMenuButtonType.selectAll,
    ],
    Key? key,
  })  : assert(!obscureText || maxLines == 1,
            'Obscured fields cannot be multiline.'),
        super(key: key);

  BorderRadius borderRadiusByIndex(int index, int length) {
    if (length == 1) {
      return const BorderRadius.all(
        Radius.circular(8),
      );
    }
    if (index == 0) {
      return const BorderRadius.horizontal(
        left: Radius.circular(8),
      );
    }
    if (index == length - 1) {
      return const BorderRadius.horizontal(
        right: Radius.circular(8),
      );
    }
    return BorderRadius.zero;
  }

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    return Container(
      height: height,
      decoration: BoxDecoration(
        color: theme.colorScheme.backgroundColorAccent,
        borderRadius: borderRadius,
        border: border,
      ),
      child: TextField(
        contextMenuBuilder: (context, editableTextState) {
          final availableItems = editableTextState.contextMenuButtonItems
              .where((element) => contextMenuItems.contains(element.type));
          return TextSelectionToolbar(
            anchorAbove: editableTextState.contextMenuAnchors.primaryAnchor,
            anchorBelow: editableTextState.contextMenuAnchors.primaryAnchor,
            toolbarBuilder: (context, child) => child,
            children: availableItems.map((ContextMenuButtonItem buttonItem) {
              final index = editableTextState.contextMenuButtonItems
                  .indexWhere((e) => e.type == buttonItem.type);
              final total = availableItems.length;
              final enableBorder = index != total - 1 && total > 1;
              return GestureDetector(
                onTap: buttonItem.onPressed,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.tooltipColor,
                    borderRadius: borderRadiusByIndex(index, total),
                    border: enableBorder
                        ? Border(
                            right: BorderSide(
                              color: theme.colorScheme.infoBannerColor,
                              width: 1,
                            ),
                          )
                        : null,
                  ),
                  child: Text(
                    CupertinoTextSelectionToolbarButton.getButtonLabel(
                      context,
                      buttonItem,
                    ),
                    style: NFTTypography.body2Medium.copyWith(
                      color: theme.colorScheme.mainTextColor,
                    ),
                  ),
                ),
              );
            }).toList(),
          );
        },
        keyboardAppearance: theme.isDark ? Brightness.dark : Brightness.light,
        focusNode: focusNode,
        controller: controller,
        textAlign: textAlign,
        obscureText: obscureText,
        obscuringCharacter: '•',
        cursorColor: textColor,
        keyboardType: keyboardType,
        maxLines: maxLines,
        minLines: minLines,
        inputFormatters: inputFormatters,
        style: NFTTypography.header6w500.copyWith(color: textColor),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(
            16 + (additionalContentPadding?.left ?? 0),
            16 + (additionalContentPadding?.top ?? 0),
            16 + (additionalContentPadding?.right ?? 0),
            16 + (additionalContentPadding?.bottom ?? 0),
          ),
          icon: icon,
          suffixIcon: suffixIcon,
          iconColor: iconColor,
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: NFTTypography.header6w500.copyWith(color: hintTextColor),
        ),
      ),
    );
  }
}
