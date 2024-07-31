import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../theme/constants/colors.dart';
import '../theme/constants/typography.dart';
import '../theme/theme.dart';
import '../utils/constants/assets.dart';

class NFTCollectionSummary extends StatelessWidget {
  final int itemsCount;
  final String itemsTitle;
  final VoidCallback? onItemsTap;
  final int ownersCount;
  final String ownersTitle;
  final double floorPrice;
  final String floorPriceTitle;
  final double volumeTraded;
  final String volumeTradedTitle;

  const NFTCollectionSummary({
    required this.itemsCount,
    required this.itemsTitle,
    this.onItemsTap,
    required this.ownersCount,
    required this.ownersTitle,
    required this.floorPrice,
    required this.floorPriceTitle,
    required this.volumeTraded,
    required this.volumeTradedTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);
    final componentTheme = theme.collectionSummaryThemeData;

    Widget propertyText(
      String text, {
      bool clickable = false,
    }) =>
        Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: NFTTypography.body1SemiBold.copyWith(
              color: clickable
                  ? NFTColors.purple
                  : theme.colorScheme.mainTextColor),
        );
    Widget titleText(
      String text, {
      bool clickable = false,
    }) =>
        Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: NFTTypography.body2Normal.copyWith(
              color:
                  clickable ? NFTColors.purple : componentTheme.subtitleColor),
        );

    final ethIcon = SvgPicture.asset(
      NFTAssetsPaths.ethPurple,
      package: NFTAssetsPaths.packageName,
      width: 10,
      height: 16,
    );

    String compactLongFormatted(num value) =>
        NumberFormat.compact().format(value).toLowerCase();

    return Container(
      decoration: BoxDecoration(
        color: componentTheme.backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: onItemsTap,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  propertyText(
                    compactLongFormatted(itemsCount),
                    clickable: onItemsTap != null,
                  ),
                  const SizedBox(height: 2),
                  titleText(
                    itemsTitle,
                    clickable: onItemsTap != null,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                propertyText(compactLongFormatted(ownersCount)),
                const SizedBox(height: 2),
                titleText(ownersTitle),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ethIcon,
                    const SizedBox(width: 4),
                    propertyText(compactLongFormatted(floorPrice)),
                  ],
                ),
                const SizedBox(height: 2),
                titleText(floorPriceTitle),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ethIcon,
                    const SizedBox(width: 4),
                    propertyText(compactLongFormatted(volumeTraded)),
                  ],
                ),
                const SizedBox(height: 2),
                titleText(volumeTradedTitle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
