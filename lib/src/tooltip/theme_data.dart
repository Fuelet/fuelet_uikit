import 'package:flutter/material.dart';

import '../theme/constants/colors.dart';

class NFTTooltipThemeData {
  final Color backgroundColor;
  final BoxShadow boxShadow;
  final Color iconColor;
  final Color activeIconColor;
  final Color iconBackgroundColor;
  final Color activeIconBackgroundColor;

  NFTTooltipThemeData({
    required this.backgroundColor,
    required this.boxShadow,
    required this.iconColor,
    required this.activeIconColor,
    required this.iconBackgroundColor,
    required this.activeIconBackgroundColor,
  });

  static NFTTooltipThemeData get light => NFTTooltipThemeData(
        backgroundColor: NFTColors.white,
        boxShadow: BoxShadow(
          color: NFTColors.darkBackground.withOpacity(0.2),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
        iconColor: NFTColors.grey6D,
        activeIconColor: NFTColors.greyF5,
        iconBackgroundColor: NFTColors.greyF5,
        activeIconBackgroundColor: NFTColors.purple,
      );

  static NFTTooltipThemeData get dark => NFTTooltipThemeData(
        backgroundColor: NFTColors.darkGreyBackground,
        boxShadow: BoxShadow(
          color: NFTColors.darkBackground.withOpacity(0.6),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
        iconColor: NFTColors.greyB2,
        activeIconColor: NFTColors.greyF5,
        iconBackgroundColor: NFTColors.darkGreyBackground,
        activeIconBackgroundColor: NFTColors.purple,
      );

  NFTTooltipThemeData copyWith({
    Color? backgroundColor,
    BoxShadow? boxShadow,
    Color? iconColor,
    Color? activeIconColor,
    Color? iconBackgroundColor,
    Color? activeIconBackgroundColor,
  }) {
    return NFTTooltipThemeData(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      boxShadow: boxShadow ?? this.boxShadow,
      iconColor: iconColor ?? this.iconColor,
      activeIconColor: activeIconColor ?? this.activeIconColor,
      iconBackgroundColor: iconBackgroundColor ?? this.iconBackgroundColor,
      activeIconBackgroundColor:
          activeIconBackgroundColor ?? this.activeIconBackgroundColor,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTTooltipThemeData &&
          runtimeType == other.runtimeType &&
          backgroundColor == other.backgroundColor &&
          boxShadow == other.boxShadow &&
          iconColor == other.iconColor &&
          activeIconColor == other.activeIconColor &&
          iconBackgroundColor == other.iconBackgroundColor &&
          activeIconBackgroundColor == other.activeIconBackgroundColor;

  @override
  int get hashCode =>
      backgroundColor.hashCode ^
      boxShadow.hashCode ^
      iconColor.hashCode ^
      activeIconColor.hashCode ^
      iconBackgroundColor.hashCode ^
      activeIconBackgroundColor.hashCode;
}
