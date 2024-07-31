import 'package:flutter/material.dart';

import '../theme/constants/colors.dart';
import '../theme/constants/typography.dart';
import '../theme/theme.dart';
import 'chart_utils.dart';

class NFTChartWrapper extends StatelessWidget {
  final Widget chart;
  final List<NFTChartButtonConfig> buttonsConfigs;
  final bool isLoading;

  const NFTChartWrapper({
    Key? key,
    required this.chart,
    this.buttonsConfigs = const [],
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: theme.chartThemeData.aspectRatio,
          child: Container(
            color: theme.chartThemeData.backgroundColor,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: isLoading
                        ? Center(
                            child: SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                color:
                                    theme.chartThemeData.progressIndicatorColor,
                                strokeWidth: 2,
                              ),
                            ),
                          )
                        : chart,
                  ),
                ),
                if (buttonsConfigs.isNotEmpty)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < buttonsConfigs.length; i++)
                        GestureDetector(
                          onTap: buttonsConfigs[i].onTap,
                          child: Container(
                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 20,
                              ),
                              child: Text(
                                buttonsConfigs[i].title,
                                style: buttonsConfigs[i].selected
                                    ? NFTTypography.body3SemiBold
                                        .copyWith(color: NFTColors.purple)
                                    : NFTTypography.body3Normal.copyWith(
                                        color:
                                            theme.colorScheme.minorTextColor),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
