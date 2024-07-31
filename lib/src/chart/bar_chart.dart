import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../theme/constants/colors.dart';
import '../theme/theme.dart';
import '../theme/theme_data.dart';
import 'chart_utils.dart';
import 'chart_wrapper.dart';

typedef NFTBarChartTooltipData = BarTooltipItem Function(
  List<NFTChartSpot> chartSpots,
  int barGroupIndex,
  NFTThemeData theme,
);

class NFTBarChart extends StatefulWidget {
  final double? minY;
  final double? maxY;
  final List<NFTChartSpot> spots;
  final List<NFTChartButtonConfig> buttonsConfigs;
  final bool isLoading;
  final bool showOnTopOfTheChartBoxArea;
  final bool drawHorizontalExtraLines;
  final bool showHorizontalExtraLinesTitles;
  final NFTBarChartTooltipData? tooltipData;
  final VoidCallback? touchCallback;
  final FlTitlesData? titlesData;
  final FlGridData? gridData;

  const NFTBarChart({
    required this.spots,
    this.buttonsConfigs = const [],
    this.minY,
    this.maxY,
    this.isLoading = false,
    this.showOnTopOfTheChartBoxArea = true,
    this.drawHorizontalExtraLines = true,
    this.showHorizontalExtraLinesTitles = true,
    this.tooltipData,
    this.touchCallback,
    this.titlesData,
    this.gridData,
    Key? key,
  }) : super(key: key);

  @override
  State<NFTBarChart> createState() => _NFTBarChartState();
}

class _NFTBarChartState extends State<NFTBarChart> {
  int _touchedIndex = -1;
  int? _prevTouchedSpotIndex;

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    return NFTChartWrapper(
      chart: LayoutBuilder(
        builder: (context, constraints) => BarChart(
          _mainData(
            constraints,
            theme,
          ),
          swapAnimationDuration: const Duration(milliseconds: 500),
          swapAnimationCurve: Curves.easeIn,
        ),
      ),
      buttonsConfigs: widget.buttonsConfigs,
      isLoading: widget.isLoading,
    );
  }

  BarChartData _mainData(BoxConstraints constraints, NFTThemeData theme) {
    const spaceWidth = 3.0;

    final parentWidth = constraints.maxWidth;
    final spacesCount = widget.spots.length + 1;
    final barWidth =
        (parentWidth - (spacesCount * spaceWidth)) / widget.spots.length;

    return BarChartData(
      gridData: widget.gridData ?? FlGridData(show: false),
      titlesData: widget.titlesData ?? FlTitlesData(show: false),
      borderData: FlBorderData(show: false),
      minY: widget.minY,
      maxY: widget.maxY,
      alignment: BarChartAlignment.center,
      barGroups: widget.spots
          .mapIndexed(
            (index, e) => BarChartGroupData(
              x: e.x.toInt(),
              barRods: [
                BarChartRodData(
                  toY: e.y,
                  width: barWidth,
                  color: _touchedIndex == index
                      ? theme.chartThemeData.barSelectedColor
                      : NFTColors.purple,
                  borderRadius: BorderRadius.zero,
                )
              ],
            ),
          )
          .toList(),
      groupsSpace: spaceWidth,
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: theme.colorScheme.backgroundColor,
          fitInsideHorizontally: true,
          fitInsideVertically: true,
          tooltipRoundedRadius: 4,
          tooltipPadding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 6,
          ),
          getTooltipItem: (_, barGroupIndex, __, ___) =>
              widget.tooltipData?.call(widget.spots, barGroupIndex, theme),
          // showOnTopOfTheChartBoxArea: showOnTopOfTheChartBoxArea,
        ),
        touchCallback: (event, response) {
          final spot = response?.spot;

          setState(() {
            if (!event.isInterestedForInteractions ||
                response == null ||
                spot == null) {
              _touchedIndex = -1;
            } else {
              _touchedIndex = spot.touchedBarGroupIndex;
            }
          });

          final touchedSpotIndex = spot?.touchedBarGroupIndex;

          if (touchedSpotIndex == null) {
            return;
          }

          if (_prevTouchedSpotIndex == null) {
            widget.touchCallback?.call();

            _prevTouchedSpotIndex = touchedSpotIndex;
          } else {
            if (_prevTouchedSpotIndex != touchedSpotIndex) {
              widget.touchCallback?.call();

              _prevTouchedSpotIndex = touchedSpotIndex;
            }
          }
        },
      ),
    );
  }
}
