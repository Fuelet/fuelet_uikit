import 'package:flutter/material.dart';

import '../theme/constants/colors.dart';
import '../theme/constants/typography.dart';

///
/// (!) Do not forget to regenerate `copyWith`, `==` and `hashCode`
/// after modifying.
class NFTTextFieldThemeData {
  final InputBorder enabledBorder;
  final InputBorder focusedBorder;
  final Color cursorColor;
  final TextStyle textStyle;
  final TextStyle hintStyle;

  const NFTTextFieldThemeData({
    required this.enabledBorder,
    required this.focusedBorder,
    required this.cursorColor,
    required this.textStyle,
    required this.hintStyle,
  });

  static NFTTextFieldThemeData get light => NFTTextFieldThemeData(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: NFTColors.grey6D,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: NFTColors.purple,
          ),
        ),
        cursorColor: NFTColors.purple,
        textStyle: NFTTypography.body1Normal.copyWith(color: NFTColors.black),
        hintStyle: NFTTypography.body1Normal.copyWith(color: NFTColors.greyB2),
      );

  static NFTTextFieldThemeData get dark => light.copyWith(
        enabledBorder: light.enabledBorder.copyWith(
          borderSide: light.enabledBorder.borderSide.copyWith(
            color: NFTColors.greyB2,
          ),
        ),
        textStyle: light.textStyle.copyWith(color: NFTColors.white),
      );

  NFTTextFieldThemeData copyWith({
    InputBorder? enabledBorder,
    InputBorder? focusedBorder,
    Color? cursorColor,
    TextStyle? textStyle,
    TextStyle? hintStyle,
  }) {
    return NFTTextFieldThemeData(
      enabledBorder: enabledBorder ?? this.enabledBorder,
      focusedBorder: focusedBorder ?? this.focusedBorder,
      cursorColor: cursorColor ?? this.cursorColor,
      textStyle: textStyle ?? this.textStyle,
      hintStyle: hintStyle ?? this.hintStyle,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTTextFieldThemeData &&
          runtimeType == other.runtimeType &&
          enabledBorder == other.enabledBorder &&
          focusedBorder == other.focusedBorder &&
          cursorColor == other.cursorColor &&
          textStyle == other.textStyle &&
          hintStyle == other.hintStyle;

  @override
  int get hashCode =>
      enabledBorder.hashCode ^
      focusedBorder.hashCode ^
      cursorColor.hashCode ^
      textStyle.hashCode ^
      hintStyle.hashCode;
}