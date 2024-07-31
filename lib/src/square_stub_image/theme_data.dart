import 'package:flutter/rendering.dart';

import '../theme/constants/colors.dart';

class NFTSquareStubImageThemeData {
  final Color innerColor;
  final Color outerColor;

  NFTSquareStubImageThemeData({
    required this.innerColor,
    required this.outerColor,
  });

  static NFTSquareStubImageThemeData get light => NFTSquareStubImageThemeData(
        innerColor: NFTColors.white,
        outerColor: NFTColors.greyF5,
      );

  static NFTSquareStubImageThemeData get dark => NFTSquareStubImageThemeData(
        innerColor: NFTColors.darkBackground,
        outerColor: NFTColors.darkGreyBackground,
      );

  NFTSquareStubImageThemeData copyWith({
    Color? innerColor,
    Color? outerColor,
  }) {
    return NFTSquareStubImageThemeData(
      innerColor: innerColor ?? this.innerColor,
      outerColor: outerColor ?? this.outerColor,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTSquareStubImageThemeData &&
          runtimeType == other.runtimeType &&
          innerColor == other.innerColor &&
          outerColor == other.outerColor;

  @override
  int get hashCode => innerColor.hashCode ^ outerColor.hashCode;
}
