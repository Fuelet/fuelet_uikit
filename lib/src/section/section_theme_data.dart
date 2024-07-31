import 'dart:ui';

import '../theme/constants/colors.dart';

class NFTListSectionThemeData {
  final Color backgroundColor;

  NFTListSectionThemeData({
    required this.backgroundColor,
  });

  static NFTListSectionThemeData get light => NFTListSectionThemeData(
        backgroundColor: NFTColors.greyF5,
      );

  static NFTListSectionThemeData get dark => NFTListSectionThemeData(
        backgroundColor: NFTColors.darkGreyBackground,
      );

  NFTListSectionThemeData copyWith({
    Color? backgroundColor,
  }) {
    return NFTListSectionThemeData(
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTListSectionThemeData &&
          runtimeType == other.runtimeType &&
          backgroundColor == other.backgroundColor;

  @override
  int get hashCode => backgroundColor.hashCode;
}
