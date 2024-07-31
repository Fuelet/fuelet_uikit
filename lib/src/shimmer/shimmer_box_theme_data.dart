import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../theme/constants/colors.dart';

class NFTShimmerBoxThemeData {
  final Color boxColor;
  final Color shimmerColor;
  final Color shimmerSecondaryColor;
  final Duration duration;
  final double waveWidth;
  final double waveDelay;

  const NFTShimmerBoxThemeData({
    required this.boxColor,
    required this.shimmerColor,
    required this.shimmerSecondaryColor,
    required this.duration,
    required this.waveWidth,
    required this.waveDelay,
  });

  static NFTShimmerBoxThemeData get light => NFTShimmerBoxThemeData(
        boxColor: NFTColors.greyF1,
        shimmerColor: NFTColors.white.withOpacity(0.5),
        shimmerSecondaryColor: NFTColors.white,
        duration: const Duration(seconds: 2),
        waveWidth: 2,
        waveDelay: 1,
      );

  // TODO: Hardcoded colors
  static NFTShimmerBoxThemeData get dark => light.copyWith(
        boxColor: const Color(0xff202024),
        shimmerColor: const Color(0xff202024),
        shimmerSecondaryColor: const Color(0xff2E2E33),
      );

  NFTShimmerBoxThemeData copyWith({
    Color? boxColor,
    Color? shimmerColor,
    Color? shimmerSecondaryColor,
    Duration? duration,
    double? waveWidth,
    double? waveDelay,
  }) {
    return NFTShimmerBoxThemeData(
      boxColor: boxColor ?? this.boxColor,
      shimmerColor: shimmerColor ?? this.shimmerColor,
      shimmerSecondaryColor:
          shimmerSecondaryColor ?? this.shimmerSecondaryColor,
      duration: duration ?? this.duration,
      waveWidth: waveWidth ?? this.waveWidth,
      waveDelay: waveDelay ?? this.waveDelay,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTShimmerBoxThemeData &&
          runtimeType == other.runtimeType &&
          boxColor == other.boxColor &&
          shimmerColor == other.shimmerColor &&
          shimmerSecondaryColor == other.shimmerSecondaryColor &&
          duration == other.duration &&
          waveWidth == other.waveWidth &&
          waveDelay == other.waveDelay;

  @override
  int get hashCode =>
      boxColor.hashCode ^
      shimmerColor.hashCode ^
      shimmerSecondaryColor.hashCode ^
      duration.hashCode ^
      waveWidth.hashCode ^
      waveDelay.hashCode;
}
