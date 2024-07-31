import 'package:flutter/rendering.dart';

import '../theme/constants/colors.dart';

class NFTCurrencyWidgetThemeData {
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;

  const NFTCurrencyWidgetThemeData({
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
  });

  static NFTCurrencyWidgetThemeData get light =>
      const NFTCurrencyWidgetThemeData(
        backgroundColor: NFTColors.greyF5,
        titleColor: NFTColors.darkBackground,
        subtitleColor: NFTColors.greyB2,
      );

  static NFTCurrencyWidgetThemeData get dark =>
      const NFTCurrencyWidgetThemeData(
        backgroundColor: NFTColors.darkGreyBackground,
        titleColor: NFTColors.white,
        subtitleColor: NFTColors.grey6D,
      );

  NFTCurrencyWidgetThemeData copyWith({
    Color? backgroundColor,
    Color? titleColor,
    Color? subtitleColor,
  }) {
    return NFTCurrencyWidgetThemeData(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      titleColor: titleColor ?? this.titleColor,
      subtitleColor: subtitleColor ?? this.subtitleColor,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTCurrencyWidgetThemeData &&
          runtimeType == other.runtimeType &&
          backgroundColor == other.backgroundColor &&
          titleColor == other.titleColor &&
          subtitleColor == other.subtitleColor;

  @override
  int get hashCode =>
      backgroundColor.hashCode ^ titleColor.hashCode ^ subtitleColor.hashCode;
}
