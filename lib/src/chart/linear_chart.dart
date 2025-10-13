import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../fuelet_uikit.dart';
import 'chart_wrapper.dart';

class NFTChart extends StatefulWidget {
  final double? minY;
  final double? maxY;
  final List<NFTChartSpot> spots;
  final List<NFTChartButtonConfig> buttonsConfigs;
  final bool isLoading;
  final bool showOnTopOfTheChartBoxArea;
  final bool drawHorizontalExtraLines;
  final bool showHorizontalExtraLinesTitles;
  final GetLineTooltipItems? getTooltipItems;
  final VoidCallback? touchCallback;

  const NFTChart({
    required this.spots,
    this.buttonsConfigs = const [],
    this.minY,
    this.maxY,
    this.isLoading = false,
    this.showOnTopOfTheChartBoxArea = true,
    this.drawHorizontalExtraLines = true,
    this.showHorizontalExtraLinesTitles = true,
    this.getTooltipItems,
    this.touchCallback,
    Key? key,
  }) : super(key: key);

  @override
  State<NFTChart> createState() => _NFTChartState();
}

class _NFTChartState extends State<NFTChart> {
  int? _prevTouchedSpotIndex;

  bool showLastDot = true;

  FlDotPainter _getDotPainter(NFTThemeData theme) => FlDotCirclePainter(
        radius: 3,
        color: theme.chartThemeData.dotSelectorColor,
        strokeColor: theme.chartThemeData.backgroundColor,
        strokeWidth: 2,
      );

  List<LineTooltipItem?> _defaultGetTooltipItems(
    List<LineBarSpot> barSpots,
    NFTThemeData theme,
  ) =>
      barSpots
          .map(
            (spot) => LineTooltipItem(
              widget.spots[spot.spotIndex].tooltipTitle,
              NFTTypography.body2SemiBold.copyWith(
                color: theme.chartThemeData.tooltipTitleColor,
              ),
              // Hide in web to remove multiline tool tip
              children: kIsWeb
                  ? null
                  : [
                      TextSpan(
                        text: widget.spots[spot.spotIndex].ethY,
                        style: NFTTypography.body3Normal.copyWith(
                            color: theme.chartThemeData.tooltipAccentTextColor),
                      ),
                    ],
            ),
          )
          .toList();

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    return Listener(
      onPointerDown: (_) {
        setState(() {
          showLastDot = false;
        });
      },
      onPointerUp: (_) {
        setState(() {
          showLastDot = true;
        });
      },
      child: NFTChartWrapper(
        chart: LineChart(
          mainData(theme),
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        ),
        buttonsConfigs: widget.buttonsConfigs,
        isLoading: widget.isLoading,
      ),
    );
  }

  LineChartData mainData(NFTThemeData theme) {
    return LineChartData(
      gridData: FlGridData(show: false),
      titlesData: FlTitlesData(show: false),
      borderData: FlBorderData(show: false),
      minY: widget.minY,
      maxY: widget.maxY,
      lineBarsData: [
        LineChartBarData(
          spots: widget.spots.map((e) => FlSpot(e.x, e.y)).toList(),
          belowBarData: BarAreaData(
            show: true,
            cutOffY: 4,
            gradient: theme.chartThemeData.barAreaGradient,
          ),
          color: theme.chartThemeData.chartIndicatorColor,
          barWidth: 1.5,
          isCurved: true,
          isStrokeCapRound: true,
          dotData: FlDotData(
            getDotPainter: (_, __, ___, ____) => _getDotPainter(theme),
            checkToShowDot: (spot, barData) {
              // Showing by default only for the last item
              final lastSpot = widget.spots.last;
              final isLastItem = spot.x == lastSpot.x && spot.y == lastSpot.y;

              return showLastDot && isLastItem;
            },
          ),
        ),
      ],
      extraLinesData: widget.drawHorizontalExtraLines
          ? ExtraLinesData(
              horizontalLines: [
                HorizontalLine(
                  y: widget.spots.last.y,
                  color: theme.chartThemeData.horizontalExtraLineColor,
                  strokeWidth: 1,
                  dashArray: [2, 2],
                ),
                HorizontalLine(
                  y: widget.spots.map((e) => e.y).reduce(max),
                  color: theme.chartThemeData.horizontalExtraLineColor,
                  strokeWidth: 1,
                  label: HorizontalLineLabel(
                    show: true,
                    alignment: Alignment.topRight,
                    style:
                        theme.chartThemeData.horizontalExtraLineLabelTextStyle,
                  ),
                ),
                HorizontalLine(
                  y: widget.spots.map((e) => e.y).reduce(min),
                  color: theme.chartThemeData.horizontalExtraLineColor,
                  strokeWidth: 1,
                  label: HorizontalLineLabel(
                    show: true,
                    alignment: Alignment.topRight,
                    style:
                        theme.chartThemeData.horizontalExtraLineLabelTextStyle,
                  ),
                ),
              ],
            )
          : null,
      lineTouchData: LineTouchData(
        touchCallback: (event, response) {
          if (event is FlTapDownEvent) HapticFeedback.mediumImpact();
          final touchedSpot = response?.lineBarSpots?.first.spotIndex;

          if (touchedSpot == null) {
            return;
          }

          if (_prevTouchedSpotIndex == null) {
            widget.touchCallback?.call();

            _prevTouchedSpotIndex = touchedSpot;
          } else {
            if (_prevTouchedSpotIndex != touchedSpot) {
              widget.touchCallback?.call();
              _prevTouchedSpotIndex = touchedSpot;
            }
          }
        },
        getTouchLineStart: (_, __) => double.negativeInfinity,
        getTouchLineEnd: (_, __) => double.infinity,
        getTouchedSpotIndicator: (barData, indicators) => indicators
            .map(
              (index) => TouchedSpotIndicatorData(
                FlLine(
                  color: NFTColors.grey6D.withOpacity(0.2),
                  strokeWidth: 1,
                ),
                FlDotData(
                  getDotPainter: (_, __, ___, ____) => _getDotPainter(theme),
                ),
              ),
            )
            .toList(),
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (_) => theme.chartThemeData.tooltipBgColor,
          fitInsideHorizontally: true,
          fitInsideVertically: true,
          tooltipRoundedRadius: 4,
          tooltipPadding: const EdgeInsets.symmetric(
            vertical: 3,
            horizontal: 6,
          ),
          getTooltipItems: widget.getTooltipItems ??
              (List<LineBarSpot> barSpots) =>
                  _defaultGetTooltipItems(barSpots, theme),
          showOnTopOfTheChartBoxArea: widget.showOnTopOfTheChartBoxArea,
        ),
      ),
    );
  }
}
