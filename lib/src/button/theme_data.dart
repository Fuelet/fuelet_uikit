import 'package:flutter/material.dart';

import '../theme/constants/colors.dart';
import '../theme/constants/typography.dart';

const _minSize = 56.0;
const _borderRadius = 4.0;

///
/// (!) Do not forget to regenerate `copyWith`, `==` and `hashCode`
/// after modifying.
class NFTButtonThemeData {
  final TextStyle textStyle;
  final TextStyle nonAccentTextStyle;
  final TextStyle monocoloredAccentTextStyle;
  final TextStyle monocoloredNonAccentTextStyle;
  final TextStyle monocoloredFilledTextStyle;
  final Gradient gradient;
  final Color monocoloredAccentBorderColor;
  final Color monocoloredNonAccentBorderColor;
  final Color monocoloredFillColor;
  final ButtonStyle materialButtonStyle;
  final double borderRadius;
  final double minSize;

  NFTButtonThemeData({
    required this.textStyle,
    required this.nonAccentTextStyle,
    required this.monocoloredAccentTextStyle,
    required this.monocoloredNonAccentTextStyle,
    required this.monocoloredFilledTextStyle,
    required this.gradient,
    required this.monocoloredAccentBorderColor,
    required this.monocoloredNonAccentBorderColor,
    required this.monocoloredFillColor,
    required this.materialButtonStyle,
    required this.borderRadius,
    required this.minSize,
  });

  static NFTButtonThemeData get light => NFTButtonThemeData(
        textStyle: NFTTypography.body1SemiBold.copyWith(color: NFTColors.white),
        nonAccentTextStyle:
            NFTTypography.body1SemiBold.copyWith(color: NFTColors.white),
        monocoloredAccentTextStyle:
            NFTTypography.body1SemiBold.copyWith(color: NFTColors.purple),
        monocoloredNonAccentTextStyle:
            NFTTypography.body1SemiBold.copyWith(color: NFTColors.greyB2),
        monocoloredFilledTextStyle:
            NFTTypography.body1SemiBold.copyWith(color: NFTColors.white),
        gradient: const LinearGradient(
          colors: [
            NFTColors.purple,
            NFTColors.pink,
          ],
          stops: [
            0.0,
            0.75,
          ],
        ),
        monocoloredAccentBorderColor: NFTColors.purple,
        monocoloredNonAccentBorderColor: NFTColors.greyB2,
        monocoloredFillColor: NFTColors.purple,
        materialButtonStyle: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_borderRadius),
            ),
          ),
        ),
        borderRadius: _borderRadius,
        minSize: _minSize,
      );

  static NFTButtonThemeData get dark => light.copyWith(
        monocoloredFilledTextStyle:
            NFTTypography.body1SemiBold.copyWith(color: NFTColors.white),
        nonAccentTextStyle:
            NFTTypography.body1SemiBold.copyWith(color: NFTColors.white),
        monocoloredNonAccentTextStyle:
            NFTTypography.body1SemiBold.copyWith(color: NFTColors.grey6D),
        monocoloredNonAccentBorderColor: NFTColors.grey6D,
      );

  NFTButtonThemeData copyWith({
    TextStyle? textStyle,
    TextStyle? nonAccentTextStyle,
    TextStyle? monocoloredAccentTextStyle,
    TextStyle? monocoloredNonAccentTextStyle,
    TextStyle? monocoloredFilledTextStyle,
    Gradient? gradient,
    Color? monocoloredAccentBorderColor,
    Color? monocoloredNonAccentBorderColor,
    Color? monocoloredFillColor,
    ButtonStyle? materialButtonStyle,
    double? borderRadius,
    double? minSize,
  }) {
    return NFTButtonThemeData(
      textStyle: textStyle ?? this.textStyle,
      nonAccentTextStyle: nonAccentTextStyle ?? this.nonAccentTextStyle,
      monocoloredAccentTextStyle:
          monocoloredAccentTextStyle ?? this.monocoloredAccentTextStyle,
      monocoloredNonAccentTextStyle:
          monocoloredNonAccentTextStyle ?? this.monocoloredNonAccentTextStyle,
      monocoloredFilledTextStyle:
          monocoloredFilledTextStyle ?? this.monocoloredFilledTextStyle,
      gradient: gradient ?? this.gradient,
      monocoloredAccentBorderColor:
          monocoloredAccentBorderColor ?? this.monocoloredAccentBorderColor,
      monocoloredNonAccentBorderColor: monocoloredNonAccentBorderColor ??
          this.monocoloredNonAccentBorderColor,
      monocoloredFillColor: monocoloredFillColor ?? this.monocoloredFillColor,
      materialButtonStyle: materialButtonStyle ?? this.materialButtonStyle,
      borderRadius: borderRadius ?? this.borderRadius,
      minSize: minSize ?? this.minSize,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTButtonThemeData &&
          runtimeType == other.runtimeType &&
          textStyle == other.textStyle &&
          nonAccentTextStyle == other.nonAccentTextStyle &&
          monocoloredAccentTextStyle == other.monocoloredAccentTextStyle &&
          monocoloredNonAccentTextStyle ==
              other.monocoloredNonAccentTextStyle &&
          monocoloredFilledTextStyle == other.monocoloredFilledTextStyle &&
          gradient == other.gradient &&
          monocoloredAccentBorderColor == other.monocoloredAccentBorderColor &&
          monocoloredNonAccentBorderColor ==
              other.monocoloredNonAccentBorderColor &&
          monocoloredFillColor == other.monocoloredFillColor &&
          materialButtonStyle == other.materialButtonStyle &&
          borderRadius == other.borderRadius &&
          minSize == other.minSize;

  @override
  int get hashCode =>
      textStyle.hashCode ^
      nonAccentTextStyle.hashCode ^
      monocoloredAccentTextStyle.hashCode ^
      monocoloredNonAccentTextStyle.hashCode ^
      monocoloredFilledTextStyle.hashCode ^
      gradient.hashCode ^
      monocoloredAccentBorderColor.hashCode ^
      monocoloredNonAccentBorderColor.hashCode ^
      monocoloredFillColor.hashCode ^
      materialButtonStyle.hashCode ^
      borderRadius.hashCode ^
      minSize.hashCode;
}
