import 'package:flutter/rendering.dart';

import '../theme/constants/colors.dart';

class NFTAssetSummaryThemeData {
  final Color socialNetworkIconColor;

  const NFTAssetSummaryThemeData({required this.socialNetworkIconColor});

  static NFTAssetSummaryThemeData get light =>
      const NFTAssetSummaryThemeData(socialNetworkIconColor: NFTColors.greyB2);

  static NFTAssetSummaryThemeData get dark =>
      const NFTAssetSummaryThemeData(socialNetworkIconColor: NFTColors.grey6D);

  NFTAssetSummaryThemeData copyWith({
    Color? socialNetworkIconColor,
  }) {
    return NFTAssetSummaryThemeData(
      socialNetworkIconColor:
          socialNetworkIconColor ?? this.socialNetworkIconColor,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTAssetSummaryThemeData &&
          runtimeType == other.runtimeType &&
          socialNetworkIconColor == other.socialNetworkIconColor;

  @override
  int get hashCode => socialNetworkIconColor.hashCode;
}
