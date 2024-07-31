import 'dart:ui';

import '../theme/constants/colors.dart';

class NFTSwitchThemeData {
  final Color activeColor;
  final Color inactiveTrackColor;
  final Color activeTrackColor;

  NFTSwitchThemeData({
    required this.activeColor,
    required this.inactiveTrackColor,
    required this.activeTrackColor,
  });

  static NFTSwitchThemeData get light => NFTSwitchThemeData(
        activeColor: NFTColors.purple,
        inactiveTrackColor: NFTColors.greyB2.withOpacity(0.4),
        activeTrackColor: NFTColors.purple.withOpacity(0.5),
      );

  static NFTSwitchThemeData get dark => light.copyWith(
        inactiveTrackColor: NFTColors.greyB2.withOpacity(0.2),
      );

  NFTSwitchThemeData copyWith({
    Color? activeColor,
    Color? inactiveTrackColor,
    Color? activeTrackColor,
  }) {
    return NFTSwitchThemeData(
      activeColor: activeColor ?? this.activeColor,
      inactiveTrackColor: inactiveTrackColor ?? this.inactiveTrackColor,
      activeTrackColor: activeTrackColor ?? this.activeTrackColor,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTSwitchThemeData &&
          runtimeType == other.runtimeType &&
          activeColor == other.activeColor &&
          inactiveTrackColor == other.inactiveTrackColor &&
          activeTrackColor == other.activeTrackColor;

  @override
  int get hashCode =>
      activeColor.hashCode ^
      inactiveTrackColor.hashCode ^
      activeTrackColor.hashCode;
}
