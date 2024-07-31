import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/constants/colors.dart';
import '../theme/constants/typography.dart';
import '../theme/theme.dart';
import '../utils/constants/assets.dart';

enum NFTAssetSocialServices {
  twitter,
  instagram,
  discord,
}

extension NFTAssetSocialServicesX on NFTAssetSocialServices {
  String get iconPath {
    switch (this) {
      case NFTAssetSocialServices.twitter:
        return NFTAssetsPaths.twitter;
      case NFTAssetSocialServices.instagram:
        return NFTAssetsPaths.instagram;
      case NFTAssetSocialServices.discord:
        return NFTAssetsPaths.discord;
    }
  }
}

class NFTAssetSummary extends StatelessWidget {
  final String floorPriceTitle;
  final String floorPriceEth;
  final String floorPriceUSD;
  final String buyPriceTitle;
  final String buyPriceEth;
  final String marketplaceTitle;
  final Set<NFTAssetSocialServices> socialServices;
  final VoidCallback? onMarketplaceTitleTap;
  final void Function(NFTAssetSocialServices)? onSocialServiceIconTap;

  const NFTAssetSummary({
    required this.floorPriceTitle,
    required this.floorPriceEth,
    required this.floorPriceUSD,
    required this.buyPriceTitle,
    required this.buyPriceEth,
    required this.marketplaceTitle,
    required this.socialServices,
    this.onMarketplaceTitleTap,
    this.onSocialServiceIconTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      floorPriceTitle,
                      style: NFTTypography.body3Normal
                          .copyWith(color: NFTColors.grey6D),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: _getEthIcon(),
                        ),
                        Flexible(
                          child: Text(
                            floorPriceEth,
                            maxLines: 1,
                            textAlign: TextAlign.end,
                            overflow: TextOverflow.ellipsis,
                            style: NFTTypography.header3SemiBold.copyWith(
                                color: theme.colorScheme.mainTextColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      floorPriceUSD,
                      style: NFTTypography.body2Normal
                          .copyWith(color: theme.colorScheme.mainTextColor),
                    ),
                  ],
                ),
              ),
              IntrinsicWidth(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        buyPriceTitle,
                        style: NFTTypography.body3Normal
                            .copyWith(color: NFTColors.grey6D),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: _getEthIcon(),
                          ),
                          Flexible(
                            child: Text(
                              buyPriceEth,
                              maxLines: 1,
                              textAlign: TextAlign.end,
                              overflow: TextOverflow.ellipsis,
                              style: NFTTypography.header3SemiBold.copyWith(
                                  color: theme.colorScheme.mainTextColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            if (onMarketplaceTitleTap != null)
              GestureDetector(
                onTap: onMarketplaceTitleTap,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      marketplaceTitle,
                      style: NFTTypography.body1Normal
                          .copyWith(color: NFTColors.purple),
                    ),
                    const SizedBox(width: 4),
                    SvgPicture.asset(
                      NFTAssetsPaths.arrowRightUp,
                      package: NFTAssetsPaths.packageName,
                      width: 24,
                      height: 24,
                      color: NFTColors.purple,
                    ),
                  ],
                ),
              ),
            if (socialServices.isNotEmpty) ...[
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  for (final network in socialServices)
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: GestureDetector(
                        onTap: () => onSocialServiceIconTap?.call(network),
                        child: SvgPicture.asset(
                          network.iconPath,
                          package: NFTAssetsPaths.packageName,
                          width: 22,
                          height: 22,
                          color: theme
                              .assetSummaryThemeData.socialNetworkIconColor,
                        ),
                      ),
                    ),
                ],
              ),
            ]
          ],
        ),
      ],
    );
  }

  Widget _getEthIcon() => SvgPicture.asset(
        NFTAssetsPaths.ethPurple,
        package: NFTAssetsPaths.packageName,
        width: 15,
        height: 24,
      );
}
