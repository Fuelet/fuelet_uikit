import 'package:flutter/rendering.dart';

import '../../fuelet_uikit.dart';

class NFTChartThemeData {
  final List<Color> barColors;
  final Color backgroundColor;
  final Color tooltipAccentTextColor;
  final Color tooltipTitleColor;
  final Color tooltipBgColor;
  final Color horizontalExtraLineColor;
  final Color barSelectedColor;
  final TextStyle horizontalExtraLineLabelTextStyle;
  final double aspectRatio;
  final Color progressIndicatorColor;
  final Color dotSelectorColor;
  final Gradient? barAreaGradient;

  const NFTChartThemeData({
    required this.barColors,
    required this.backgroundColor,
    required this.tooltipAccentTextColor,
    required this.tooltipTitleColor,
    required this.tooltipBgColor,
    required this.horizontalExtraLineColor,
    required this.barSelectedColor,
    required this.horizontalExtraLineLabelTextStyle,
    required this.aspectRatio,
    required this.progressIndicatorColor,
    required this.dotSelectorColor,
    this.barAreaGradient,
  });

  static NFTChartThemeData get light => NFTChartThemeData(
        barColors: const [
          NFTColors.purple,
          NFTColors.pink,
        ],
        backgroundColor: NFTColors.white,
        tooltipAccentTextColor: NFTColors.purple,
        tooltipTitleColor: FLTColors.blue,
        tooltipBgColor: FLTColors.greyF5,
        horizontalExtraLineColor: NFTColors.grey6D.withOpacity(0.1),
        barSelectedColor: NFTColors.blue,
        horizontalExtraLineLabelTextStyle:
            NFTTypography.body3Normal.copyWith(color: NFTColors.grey6D),
        aspectRatio: 1.5,
        progressIndicatorColor: NFTColors.purple,
        dotSelectorColor: FLTColors.blue,
        barAreaGradient: LinearGradient(
          colors: [
            const Color(0xff91E6FC).withOpacity(.05),
            const Color(0xff91E6FC).withOpacity(0.015),
            const Color(0xff91E6FC).withOpacity(0.001),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [.25, .66, 1],
        ),
      );

  static NFTChartThemeData get dark => light.copyWith(
        backgroundColor: FLTColors.darkBackground,
        tooltipAccentTextColor: FLTColors.blue,
        barSelectedColor: NFTColors.white,
        horizontalExtraLineColor: NFTColors.grey6D.withOpacity(0.2),
      );

  NFTChartThemeData copyWith({
    List<Color>? barColors,
    Color? backgroundColor,
    Color? tooltipAccentTextColor,
    Color? tooltipTitleColor,
    Color? tooltipBgColor,
    Color? horizontalExtraLineColor,
    Color? barSelectedColor,
    TextStyle? horizontalExtraLineLabelTextStyle,
    double? aspectRatio,
    Color? progressIndicatorColor,
    Color? dotSelectorColor,
    Gradient? barAreaGradient,
  }) {
    return NFTChartThemeData(
      barColors: barColors ?? this.barColors,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      tooltipAccentTextColor:
          tooltipAccentTextColor ?? this.tooltipAccentTextColor,
      tooltipTitleColor: tooltipTitleColor ?? this.tooltipTitleColor,
      tooltipBgColor: tooltipBgColor ?? this.tooltipBgColor,
      horizontalExtraLineColor:
          horizontalExtraLineColor ?? this.horizontalExtraLineColor,
      barSelectedColor: barSelectedColor ?? this.barSelectedColor,
      horizontalExtraLineLabelTextStyle: horizontalExtraLineLabelTextStyle ??
          this.horizontalExtraLineLabelTextStyle,
      aspectRatio: aspectRatio ?? this.aspectRatio,
      progressIndicatorColor:
          progressIndicatorColor ?? this.progressIndicatorColor,
      dotSelectorColor: dotSelectorColor ?? this.dotSelectorColor,
      barAreaGradient: barAreaGradient ?? this.barAreaGradient,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTChartThemeData &&
          runtimeType == other.runtimeType &&
          barColors == other.barColors &&
          backgroundColor == other.backgroundColor &&
          tooltipAccentTextColor == other.tooltipAccentTextColor &&
          horizontalExtraLineColor == other.horizontalExtraLineColor &&
          barSelectedColor == other.barSelectedColor &&
          horizontalExtraLineLabelTextStyle ==
              other.horizontalExtraLineLabelTextStyle &&
          aspectRatio == other.aspectRatio &&
          progressIndicatorColor == other.progressIndicatorColor &&
          dotSelectorColor == other.dotSelectorColor &&
          tooltipTitleColor == other.tooltipTitleColor &&
          tooltipBgColor == other.tooltipBgColor &&
          barAreaGradient == other.barAreaGradient;

  @override
  int get hashCode =>
      barColors.hashCode ^
      backgroundColor.hashCode ^
      tooltipAccentTextColor.hashCode ^
      horizontalExtraLineColor.hashCode ^
      barSelectedColor.hashCode ^
      horizontalExtraLineLabelTextStyle.hashCode ^
      aspectRatio.hashCode ^
      progressIndicatorColor.hashCode ^
      dotSelectorColor.hashCode ^
      tooltipTitleColor.hashCode ^
      tooltipBgColor.hashCode ^
      barAreaGradient.hashCode;
}
