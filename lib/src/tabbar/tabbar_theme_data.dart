import 'dart:ui';

import '../../fuelet_uikit.dart';

class NFTTabBarThemeData {
  final Color iconColor;
  final Color backgroundColor;

  const NFTTabBarThemeData({
    required this.iconColor,
    required this.backgroundColor,
  });

  static NFTTabBarThemeData get light => NFTTabBarThemeData(
        iconColor: NFTColors.greyD8,
        backgroundColor: NFTColors.white.withOpacity(0.8),
      );

  static NFTTabBarThemeData get dark => NFTTabBarThemeData(
        iconColor: NFTColors.greyF3,
        backgroundColor: FLTColors.grey34.withOpacity(0.8),
      );

  NFTTabBarThemeData copyWith({
    Color? iconColor,
    Color? backgroundColor,
  }) {
    return NFTTabBarThemeData(
      iconColor: iconColor ?? this.iconColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTTabBarThemeData &&
          runtimeType == other.runtimeType &&
          iconColor == other.iconColor &&
          backgroundColor == other.backgroundColor;

  @override
  int get hashCode => iconColor.hashCode ^ backgroundColor.hashCode;
}
