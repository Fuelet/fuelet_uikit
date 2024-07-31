import 'dart:ui';

import '../theme/constants/colors.dart';

class NFTBalanceWidgetThemeData {
  final Color changeDownColor;
  final Color changeUpColor;

  NFTBalanceWidgetThemeData({
    required this.changeDownColor,
    required this.changeUpColor,
  });

  static NFTBalanceWidgetThemeData get light => NFTBalanceWidgetThemeData(
        changeDownColor: NFTColors.pink,
        changeUpColor: NFTColors.green,
      );

  static NFTBalanceWidgetThemeData get dark => light;

  NFTBalanceWidgetThemeData copyWith({
    Color? changeDownColor,
    Color? changeUpColor,
  }) {
    return NFTBalanceWidgetThemeData(
      changeDownColor: changeDownColor ?? this.changeDownColor,
      changeUpColor: changeUpColor ?? this.changeUpColor,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTBalanceWidgetThemeData &&
          runtimeType == other.runtimeType &&
          changeDownColor == other.changeDownColor &&
          changeUpColor == other.changeUpColor;

  @override
  int get hashCode => changeDownColor.hashCode ^ changeUpColor.hashCode;
}
