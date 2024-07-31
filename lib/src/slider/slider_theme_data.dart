import 'package:flutter/rendering.dart';

import '../theme/constants/colors.dart';

class NFTSliderThemeData {
  final Color activeColor;
  final Color inactiveColor;
  final Color thumbColor;
  final Color shadowColor;
  final double thumbRadius;
  final double thumbElevation;
  final double overlayRadius;

  NFTSliderThemeData({
    required this.activeColor,
    required this.inactiveColor,
    required this.thumbColor,
    required this.shadowColor,
    required this.thumbRadius,
    required this.thumbElevation,
    required this.overlayRadius,
  });

  static NFTSliderThemeData get light => NFTSliderThemeData(
        activeColor: NFTColors.purple,
        inactiveColor: NFTColors.greyB2.withOpacity(0.4),
        thumbColor: NFTColors.white,
        shadowColor: NFTColors.black,
        thumbRadius: 14,
        thumbElevation: 6,
        overlayRadius: 0,
      );

  static NFTSliderThemeData get dark => light.copyWith(
        inactiveColor: NFTColors.greyB2.withOpacity(0.2),
      );

  NFTSliderThemeData copyWith({
    Color? activeColor,
    Color? inactiveColor,
    Color? thumbColor,
    Color? shadowColor,
    double? thumbRadius,
    double? thumbElevation,
    double? overlayRadius,
  }) {
    return NFTSliderThemeData(
      activeColor: activeColor ?? this.activeColor,
      inactiveColor: inactiveColor ?? this.inactiveColor,
      thumbColor: thumbColor ?? this.thumbColor,
      shadowColor: shadowColor ?? this.shadowColor,
      thumbRadius: thumbRadius ?? this.thumbRadius,
      thumbElevation: thumbElevation ?? this.thumbElevation,
      overlayRadius: overlayRadius ?? this.overlayRadius,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTSliderThemeData &&
          runtimeType == other.runtimeType &&
          activeColor == other.activeColor &&
          inactiveColor == other.inactiveColor &&
          thumbColor == other.thumbColor &&
          shadowColor == other.shadowColor &&
          thumbRadius == other.thumbRadius &&
          thumbElevation == other.thumbElevation &&
          overlayRadius == other.overlayRadius;

  @override
  int get hashCode =>
      activeColor.hashCode ^
      inactiveColor.hashCode ^
      thumbColor.hashCode ^
      shadowColor.hashCode ^
      thumbRadius.hashCode ^
      thumbElevation.hashCode ^
      overlayRadius.hashCode;
}
