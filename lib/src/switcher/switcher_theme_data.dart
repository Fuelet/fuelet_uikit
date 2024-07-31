import 'dart:ui';

import '../theme/constants/colors.dart';

class NFTSwitcherThemeData {
  final Color backgroundColor;
  final Color textColor;

  const NFTSwitcherThemeData({
    required this.backgroundColor,
    required this.textColor,
  });

  static NFTSwitcherThemeData get light => const NFTSwitcherThemeData(
        backgroundColor: NFTColors.greyF5,
        textColor: NFTColors.grey6D,
      );

  static NFTSwitcherThemeData get dark => const NFTSwitcherThemeData(
        backgroundColor: NFTColors.darkGreyBackground,
        textColor: NFTColors.greyB2,
      );

  NFTSwitcherThemeData copyWith({
    Color? backgroundColor,
    Color? textColor,
  }) {
    return NFTSwitcherThemeData(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTSwitcherThemeData &&
          runtimeType == other.runtimeType &&
          backgroundColor == other.backgroundColor &&
          textColor == other.textColor;

  @override
  int get hashCode => backgroundColor.hashCode ^ textColor.hashCode;
}
