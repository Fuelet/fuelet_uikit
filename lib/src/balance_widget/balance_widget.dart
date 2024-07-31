import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../placeholder/placeholder.dart';
import '../theme/constants/typography.dart';
import '../theme/theme.dart';
import '../theme/theme_data.dart';
import '../utils/constants/assets.dart';

class NFTBalanceWidget extends StatelessWidget {
  final String? primaryBalance;
  final String? secondaryBalance;
  final String? changeTitle;
  final double? change;
  final bool small;
  final bool centered;
  final bool switchCurrency;
  final Widget? cryptocurrencyIcon;
  final VoidCallback? onCurrencySwitcherTap;

  const NFTBalanceWidget({
    required this.primaryBalance,
    required this.secondaryBalance,
    required this.changeTitle,
    required this.change,
    this.small = false,
    this.centered = false,
    this.switchCurrency = false,
    this.cryptocurrencyIcon,
    this.onCurrencySwitcherTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);
    final mainTextColor = theme.colorScheme.mainTextColor;

    final primaryBalance = this.primaryBalance;
    final secondaryBalance = this.secondaryBalance;
    final changeTitle = this.changeTitle;
    final change = this.change;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:
          centered ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        if (primaryBalance == null) const SizedBox(height: 4),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (primaryBalance != null)
              if (switchCurrency && secondaryBalance != null)
                _getSecondaryBalanceWidget(
                  secondaryBalance,
                  mainTextColor,
                )
              else
                ..._getPrimaryBalanceWidgets(
                  primaryBalance,
                  mainTextColor,
                )
            else
              const NFTPlaceholder(
                width: 92,
                height: 30,
              ),
          ],
        ),
        if (primaryBalance == null) const SizedBox(height: 4),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (secondaryBalance != null)
              if (switchCurrency && primaryBalance != null)
                ..._getPrimaryBalanceWidgets(
                  primaryBalance,
                  theme.colorScheme.minorTextColor,
                )
              else
                _getSecondaryBalanceWidget(
                  secondaryBalance,
                  theme.colorScheme.minorTextColor,
                )
            else
              const NFTPlaceholder(
                width: 75,
                height: 16,
              ),
            if (change != null && changeTitle != null) ...[
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 4,
                ),
                child: _getChangeArrow(change, theme),
              ),
              Text(
                changeTitle,
                textAlign: centered ? TextAlign.center : TextAlign.start,
                style: (small
                        ? NFTTypography.body2Normal
                        : NFTTypography.body1Normal)
                    .copyWith(
                  color: _getChangeTextColor(change, theme),
                ),
              ),
            ] else
              const NFTPlaceholder(
                width: 44,
                height: 16,
              ),
          ],
        ),
      ],
    );
  }

  Widget _getChangeArrow(double change, NFTThemeData theme) => change >= 0
      ? SvgPicture.asset(
          NFTAssetsPaths.arrowUp,
          package: NFTAssetsPaths.packageName,
          color: theme.balanceWidgetThemeData.changeUpColor,
        )
      : SvgPicture.asset(
          NFTAssetsPaths.arrowDown,
          package: NFTAssetsPaths.packageName,
          color: theme.balanceWidgetThemeData.changeDownColor,
        );

  Color _getChangeTextColor(double change, NFTThemeData theme) => change >= 0
      ? theme.balanceWidgetThemeData.changeUpColor
      : theme.balanceWidgetThemeData.changeDownColor;

  List<Widget> _getPrimaryBalanceWidgets(
          String primaryBalance, Color textColor) =>
      [
        cryptocurrencyIcon ??
            SvgPicture.asset(
              NFTAssetsPaths.ethPurple,
              package: NFTAssetsPaths.packageName,
              width: small || switchCurrency ? 10 : 15,
              height: small || switchCurrency ? 16 : 24,
            ),
        const SizedBox(width: 4),
        Text(
          primaryBalance,
          textAlign: centered ? TextAlign.center : TextAlign.start,
          style: switchCurrency
              ? (small ? NFTTypography.body2Normal : NFTTypography.body1Normal)
                  .copyWith(color: textColor)
              : (small
                      ? NFTTypography.body1SemiBold
                      : NFTTypography.header2SemiBold)
                  .copyWith(color: textColor),
        ),
      ];

  Widget _getSecondaryBalanceWidget(String secondaryBalance, Color textColor) {
    late TextStyle textStyle;

    if (switchCurrency) {
      textStyle =
          small ? NFTTypography.body1SemiBold : NFTTypography.header2SemiBold;
    } else {
      textStyle = small ? NFTTypography.body2Normal : NFTTypography.body1Normal;
    }

    textStyle = textStyle.copyWith(color: textColor);

    return Text(
      secondaryBalance,
      textAlign: centered ? TextAlign.center : TextAlign.start,
      style: textStyle,
    );
  }
}
