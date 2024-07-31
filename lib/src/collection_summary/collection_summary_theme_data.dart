import 'package:flutter/rendering.dart';

import '../theme/constants/colors.dart';

class NFTCollectionSummaryThemeData {
  final Color backgroundColor;
  final Color subtitleColor;

  const NFTCollectionSummaryThemeData({
    required this.backgroundColor,
    required this.subtitleColor,
  });

  static NFTCollectionSummaryThemeData get light =>
      const NFTCollectionSummaryThemeData(
        backgroundColor: NFTColors.greyF5,
        subtitleColor: NFTColors.greyB2,
      );

  static NFTCollectionSummaryThemeData get dark =>
      const NFTCollectionSummaryThemeData(
        backgroundColor: NFTColors.darkGreyBackground,
        subtitleColor: NFTColors.grey6D,
      );

  NFTCollectionSummaryThemeData copyWith({
    Color? subtitleColor,
    Color? backgroundColor,
  }) {
    return NFTCollectionSummaryThemeData(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      subtitleColor: subtitleColor ?? this.subtitleColor,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTCollectionSummaryThemeData &&
          runtimeType == other.runtimeType &&
          subtitleColor == other.subtitleColor &&
          backgroundColor == other.backgroundColor;

  @override
  int get hashCode => backgroundColor.hashCode ^ subtitleColor.hashCode;
}
