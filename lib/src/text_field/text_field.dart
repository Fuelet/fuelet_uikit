import 'package:flutter/material.dart';

import '../theme/theme.dart';

class NFTTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hintText;
  final TextInputType? keyboardType;
  final Widget? suffix;
  final bool autofocus;
  final bool enableSuggestions;
  final EdgeInsets scrollPadding;

  const NFTTextField({
    this.controller,
    this.focusNode,
    this.hintText,
    this.keyboardType,
    this.suffix,
    this.scrollPadding = const EdgeInsets.all(20),
    this.autofocus = false,
    this.enableSuggestions = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);
    final textFieldTheme = theme.textFieldThemeData;

    return TextField(
      scrollPadding: scrollPadding,
      style: textFieldTheme.textStyle,
      cursorColor: textFieldTheme.cursorColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: textFieldTheme.hintStyle,
        enabledBorder: textFieldTheme.enabledBorder,
        focusedBorder: textFieldTheme.focusedBorder,
        suffix: suffix,
      ),
      controller: controller,
      focusNode: focusNode,
      autofocus: autofocus,
      enableSuggestions: enableSuggestions,
      keyboardType: keyboardType,
      keyboardAppearance: theme.isDark ? Brightness.dark : Brightness.light,
    );
  }
}
