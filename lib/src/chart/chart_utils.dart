import 'package:flutter/foundation.dart';

class NFTChartButtonConfig {
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const NFTChartButtonConfig(
    this.title,
    this.selected,
    this.onTap,
  );
}

class NFTChartSpot {
  final double x;
  final double y;
  final String tooltipTitle;
  final String period;
  final String ethY;
  final String fiatY;

  const NFTChartSpot(
    this.x,
    this.y, {
    required this.tooltipTitle,
    required this.period,
    required this.ethY,
    required this.fiatY,
  });

  @override
  String toString() {
    return 'NFTChartSpot{x: $x, y: $y, tooltipTitle: $tooltipTitle, period: $period, ethY: $ethY, fiatY: $fiatY}';
  }
}
