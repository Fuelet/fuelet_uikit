import 'package:flutter/rendering.dart';

import '../theme/constants/colors.dart';
import '../theme/theme_data.dart';
import '../utils/rarity.dart';

class NFTItemCardThemeData {
  final Color backgroundColor;
  final Color textColor;

  const NFTItemCardThemeData({
    required this.backgroundColor,
    required this.textColor,
  });

  static NFTItemCardThemeData get light => const NFTItemCardThemeData(
        backgroundColor: NFTColors.greyF5,
        textColor: NFTColors.black,
      );

  static NFTItemCardThemeData get dark => const NFTItemCardThemeData(
        backgroundColor: NFTColors.darkGreyBackground,
        textColor: NFTColors.white,
      );

  NFTItemCardThemeData applyRarity(
          NFTAssetTraitRarity rarity, NFTThemeData theme) =>
      copyWith(
        textColor:
            rarity.isRare ? NFTColors.black : theme.colorScheme.mainTextColor,
      );

  NFTItemCardThemeData copyWith({
    Color? backgroundColor,
    Color? textColor,
  }) {
    return NFTItemCardThemeData(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTItemCardThemeData &&
          runtimeType == other.runtimeType &&
          backgroundColor == other.backgroundColor &&
          textColor == other.textColor;

  @override
  int get hashCode => backgroundColor.hashCode ^ textColor.hashCode;
}
