import 'package:flutter/widgets.dart';

import '../placeholder/placeholder.dart';
import '../theme/constants/typography.dart';
import '../theme/theme.dart';

class NFTCurrencyWidget extends StatelessWidget {
  final String? etherPrice;
  final String etherSubtitle;
  final String? gweiPrice;
  final String gweiSubtitle;
  final VoidCallback? onTap;

  const NFTCurrencyWidget({
    required this.etherPrice,
    required this.etherSubtitle,
    required this.gweiPrice,
    required this.gweiSubtitle,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context).currencyWidgetThemeData;

    final etherPrice = this.etherPrice;
    final gweiPrice = this.gweiPrice;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: theme.backgroundColor,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (etherPrice != null)
                  Text(
                    etherPrice,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: NFTTypography.body2Normal.copyWith(
                      color: theme.titleColor,
                    ),
                  )
                else
                  const NFTPlaceholder(width: 52, height: 18),
                Text(
                  etherSubtitle,
                  style: NFTTypography.body2Normal.copyWith(
                    color: theme.subtitleColor,
                  ),
                ),
              ],
            ),
            ConstrainedBox(constraints: const BoxConstraints(minWidth: 16)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (gweiPrice != null)
                  Text(
                    gweiPrice,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: NFTTypography.body2Normal.copyWith(
                      color: theme.titleColor,
                    ),
                  )
                else
                  const NFTPlaceholder(width: 52, height: 18),
                Text(
                  gweiSubtitle,
                  style: NFTTypography.body2Normal.copyWith(
                    color: theme.subtitleColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
