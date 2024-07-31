import 'package:flutter/cupertino.dart';

import '../theme/constants/colors.dart';
import '../theme/constants/typography.dart';

class NFTAssetTraitShieldThemeData {
  final List<Color> goldColors;
  final List<Color> silverColors;
  final Color commonTraitBackgroundColor;
  final TextStyle traitTitleTextStyle;
  final TextStyle rareTraitValueTextStyle;
  final TextStyle commonTraitValueTextStyle;
  final TextStyle rareTraitRarityTextStyle;
  final TextStyle commonTraitRarityTextStyle;

  const NFTAssetTraitShieldThemeData({
    required this.goldColors,
    required this.silverColors,
    required this.commonTraitBackgroundColor,
    required this.traitTitleTextStyle,
    required this.rareTraitValueTextStyle,
    required this.commonTraitValueTextStyle,
    required this.rareTraitRarityTextStyle,
    required this.commonTraitRarityTextStyle,
  });

  static NFTAssetTraitShieldThemeData get light => NFTAssetTraitShieldThemeData(
        goldColors: [
          const Color(0xFFEBD24D),
          const Color(0xFFC5A535),
        ],
        silverColors: [
          const Color(0xFFE3EBED),
          const Color(0xFFB7BFC0),
        ],
        commonTraitBackgroundColor: NFTColors.greyF5,
        traitTitleTextStyle:
            NFTTypography.body3Medium.copyWith(color: NFTColors.grey6D),
        rareTraitValueTextStyle:
            NFTTypography.body2Medium.copyWith(color: NFTColors.black),
        commonTraitValueTextStyle:
            NFTTypography.body2Medium.copyWith(color: NFTColors.black),
        rareTraitRarityTextStyle:
            NFTTypography.body2Normal.copyWith(color: NFTColors.white),
        commonTraitRarityTextStyle:
            NFTTypography.body2Normal.copyWith(color: NFTColors.pink),
      );

  static NFTAssetTraitShieldThemeData get dark => light.copyWith(
        commonTraitBackgroundColor: NFTColors.darkGreyBackground,
        commonTraitValueTextStyle:
            light.commonTraitValueTextStyle.copyWith(color: NFTColors.white),
      );

  NFTAssetTraitShieldThemeData copyWith({
    List<Color>? goldColors,
    List<Color>? silverColors,
    Color? commonTraitBackgroundColor,
    TextStyle? traitTitleTextStyle,
    TextStyle? rareTraitValueTextStyle,
    TextStyle? commonTraitValueTextStyle,
    TextStyle? rareTraitRarityTextStyle,
    TextStyle? commonTraitRarityTextStyle,
  }) {
    return NFTAssetTraitShieldThemeData(
      goldColors: goldColors ?? this.goldColors,
      silverColors: silverColors ?? this.silverColors,
      commonTraitBackgroundColor:
          commonTraitBackgroundColor ?? this.commonTraitBackgroundColor,
      traitTitleTextStyle: traitTitleTextStyle ?? this.traitTitleTextStyle,
      rareTraitValueTextStyle:
          rareTraitValueTextStyle ?? this.rareTraitValueTextStyle,
      commonTraitValueTextStyle:
          commonTraitValueTextStyle ?? this.commonTraitValueTextStyle,
      rareTraitRarityTextStyle:
          rareTraitRarityTextStyle ?? this.rareTraitRarityTextStyle,
      commonTraitRarityTextStyle:
          commonTraitRarityTextStyle ?? this.commonTraitRarityTextStyle,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTAssetTraitShieldThemeData &&
          runtimeType == other.runtimeType &&
          goldColors == other.goldColors &&
          silverColors == other.silverColors &&
          commonTraitBackgroundColor == other.commonTraitBackgroundColor &&
          traitTitleTextStyle == other.traitTitleTextStyle &&
          rareTraitValueTextStyle == other.rareTraitValueTextStyle &&
          commonTraitValueTextStyle == other.commonTraitValueTextStyle &&
          rareTraitRarityTextStyle == other.rareTraitRarityTextStyle &&
          commonTraitRarityTextStyle == other.commonTraitRarityTextStyle;

  @override
  int get hashCode =>
      goldColors.hashCode ^
      silverColors.hashCode ^
      commonTraitBackgroundColor.hashCode ^
      traitTitleTextStyle.hashCode ^
      rareTraitValueTextStyle.hashCode ^
      commonTraitValueTextStyle.hashCode ^
      rareTraitRarityTextStyle.hashCode ^
      commonTraitRarityTextStyle.hashCode;
}
