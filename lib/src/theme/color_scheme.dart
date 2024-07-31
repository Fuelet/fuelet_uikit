import 'package:flutter/rendering.dart';

import '../../fuelet_uikit.dart';

class NFTColorScheme {
  final Color backgroundColor;
  final Color backgroundColorContrastive;
  final Color backgroundColorSoft;
  final Color backgroundColorAccent;
  final Color mainTextColor;
  final Color minorTextColor;
  final Color minorDarkTextColor;
  final Color minorLightTextColor;
  final Color activeButtonTextColor;
  final Color differentThemeMainColor;
  final Color infoBannerTextColor;
  final Color infoBannerColor;
  final Color topBannerButtonColor;
  final Color shimmerColor;
  final Color tooltipColor;
  final Color differentMinorTextColor;

  const NFTColorScheme({
    required this.backgroundColor,
    required this.backgroundColorContrastive,
    required this.backgroundColorSoft,
    required this.backgroundColorAccent,
    required this.mainTextColor,
    required this.minorTextColor,
    required this.minorDarkTextColor,
    required this.minorLightTextColor,
    required this.activeButtonTextColor,
    required this.differentThemeMainColor,
    required this.infoBannerTextColor,
    required this.infoBannerColor,
    required this.topBannerButtonColor,
    required this.shimmerColor,
    required this.differentMinorTextColor,
    required this.tooltipColor,
  });

  static NFTColorScheme get light => const NFTColorScheme(
        backgroundColor: NFTColors.white,
        backgroundColorContrastive: NFTColors.white,
        backgroundColorSoft: NFTColors.greyF5,
        backgroundColorAccent: NFTColors.greyF5,
        mainTextColor: NFTColors.black,
        minorTextColor: NFTColors.grey9D,
        minorDarkTextColor: NFTColors.grey6D,
        minorLightTextColor: NFTColors.greyB2,
        activeButtonTextColor: NFTColors.charlestonGreen2F,
        differentThemeMainColor: NFTColors.white,
        infoBannerTextColor: NFTColors.charlestonGreen2F,
        infoBannerColor: NFTColors.greyF5,
        topBannerButtonColor: NFTColors.white,
        shimmerColor: FLTColors.greyF5,
        tooltipColor: NFTColors.greyCC,
        differentMinorTextColor: NFTColors.grey6D,
      );

  static NFTColorScheme get dark => const NFTColorScheme(
        backgroundColor: FLTColors.darkBackground,
        backgroundColorContrastive: NFTColors.darkGreyBackground,
        backgroundColorSoft: NFTColors.darkBackground,
        backgroundColorAccent: NFTColors.darkGreyBackground,
        mainTextColor: NFTColors.white,
        minorTextColor: NFTColors.grey6D,
        minorDarkTextColor: NFTColors.grey9D,
        minorLightTextColor: NFTColors.grey6D,
        activeButtonTextColor: NFTColors.grey6D,
        differentThemeMainColor: NFTColors.black,
        infoBannerTextColor: NFTColors.grey9D,
        infoBannerColor: NFTColors.charlestonGreen2F,
        topBannerButtonColor: NFTColors.granitBlack39,
        shimmerColor: NFTColors.white,
        differentMinorTextColor: NFTColors.grey9D,
        tooltipColor: NFTColors.darkGrey19,
      );

  NFTColorScheme copyWith({
    Color? backgroundColor,
    Color? backgroundColorContrastive,
    Color? backgroundColorSoft,
    Color? backgroundColorAccent,
    Color? mainTextColor,
    Color? minorTextColor,
    Color? minorDarkTextColor,
    Color? minorLightTextColor,
    Color? activeButtonTextColor,
    Color? differentThemeMainColor,
    Color? infoBannerTextColor,
    Color? infoBannerColor,
    Color? topBannerButtonColor,
    Color? shimmerColor,
    Color? differentMinorTextColor,
    Color? tooltipColor,
  }) {
    return NFTColorScheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      backgroundColorContrastive:
          backgroundColorContrastive ?? this.backgroundColorContrastive,
      backgroundColorSoft: backgroundColorSoft ?? this.backgroundColorSoft,
      backgroundColorAccent:
          backgroundColorAccent ?? this.backgroundColorAccent,
      mainTextColor: mainTextColor ?? this.mainTextColor,
      minorTextColor: minorTextColor ?? this.minorTextColor,
      minorDarkTextColor: minorDarkTextColor ?? this.minorDarkTextColor,
      minorLightTextColor: minorLightTextColor ?? this.minorLightTextColor,
      activeButtonTextColor:
          activeButtonTextColor ?? this.activeButtonTextColor,
      differentThemeMainColor:
          differentThemeMainColor ?? this.differentThemeMainColor,
      infoBannerTextColor: infoBannerTextColor ?? this.infoBannerTextColor,
      topBannerButtonColor: topBannerButtonColor ?? this.topBannerButtonColor,
      infoBannerColor: infoBannerColor ?? this.infoBannerColor,
      shimmerColor: shimmerColor ?? this.shimmerColor,
      differentMinorTextColor:
          differentMinorTextColor ?? this.differentMinorTextColor,
      tooltipColor: tooltipColor ?? this.tooltipColor,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTColorScheme &&
          runtimeType == other.runtimeType &&
          backgroundColor == other.backgroundColor &&
          backgroundColorContrastive == other.backgroundColorContrastive &&
          backgroundColorSoft == other.backgroundColorSoft &&
          backgroundColorAccent == other.backgroundColorAccent &&
          mainTextColor == other.mainTextColor &&
          minorTextColor == other.minorTextColor &&
          minorLightTextColor == other.minorLightTextColor &&
          infoBannerTextColor == other.infoBannerTextColor &&
          infoBannerColor == other.infoBannerColor &&
          topBannerButtonColor == other.topBannerButtonColor &&
          shimmerColor == other.shimmerColor &&
          activeButtonTextColor == other.activeButtonTextColor &&
          tooltipColor == other.tooltipColor &&
          minorDarkTextColor == other.minorDarkTextColor;

  @override
  int get hashCode =>
      backgroundColor.hashCode ^
      backgroundColorContrastive.hashCode ^
      backgroundColorSoft.hashCode ^
      backgroundColorAccent.hashCode ^
      mainTextColor.hashCode ^
      minorTextColor.hashCode ^
      minorLightTextColor.hashCode ^
      infoBannerTextColor.hashCode ^
      infoBannerColor.hashCode ^
      topBannerButtonColor.hashCode ^
      activeButtonTextColor.hashCode ^
      shimmerColor.hashCode ^
      tooltipColor.hashCode ^
      minorDarkTextColor.hashCode;
}
