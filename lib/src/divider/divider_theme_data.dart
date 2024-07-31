import 'package:flutter/rendering.dart';

import '../theme/constants/colors.dart';

class NFTDividerThemeData {
  final Color color;

  const NFTDividerThemeData({required this.color});

  static NFTDividerThemeData get light =>
      const NFTDividerThemeData(color: NFTColors.greyD8);

  static NFTDividerThemeData get dark =>
      const NFTDividerThemeData(color: NFTColors.charlestonGreen29);

  NFTDividerThemeData copyWith({
    Color? color,
  }) {
    return NFTDividerThemeData(
      color: color ?? this.color,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTDividerThemeData &&
          runtimeType == other.runtimeType &&
          color == other.color;

  @override
  int get hashCode => color.hashCode;
}
