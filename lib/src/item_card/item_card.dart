import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../asset_trait_shield/asset_trait_shield_theme_data.dart';
import '../ens_stub_image/ens_stub_image.dart';
import '../shimmer/shimmer_box.dart';
import '../square_stub_image/square_stub_image.dart';
import '../theme/constants/typography.dart';
import '../theme/theme.dart';
import '../utils/constants/assets.dart';
import '../utils/rarity.dart';

class NFTItemsGrid extends StatelessWidget {
  final List<NFTItemCardDataBase> data;
  final bool shrinkWrap;
  final ScrollPhysics? scrollPhysics;

  const NFTItemsGrid({
    required this.data,
    this.shrinkWrap = false,
    this.scrollPhysics,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: shrinkWrap,
      physics: scrollPhysics,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.82,
      ),
      itemBuilder: (_, index) {
        final itemData = data[index];

        if (itemData is NFTItemCardData) {
          return NFTItemCard(
            data: itemData,
            onTap: itemData.onTap,
          );
        }

        return const NFTPlaceholderShimmer(
          child: NFTPlaceholderBox(),
        );
      },
      itemCount: data.length,
    );
  }
}

abstract class NFTItemCardDataBase {}

class NFTItemCardData implements NFTItemCardDataBase {
  final String imageUrl;
  final String name;
  final String price;
  final bool isENS;
  final String? heroTag;
  final VoidCallback? onTap;

  const NFTItemCardData({
    required this.imageUrl,
    required this.name,
    required this.price,
    this.isENS = false,
    this.heroTag,
    this.onTap,
  });
}

class NFTItemLoadingCardData implements NFTItemCardDataBase {
  const NFTItemLoadingCardData();
}

class NFTItemCard extends StatefulWidget {
  final NFTItemCardData data;
  final VoidCallback? onTap;

  const NFTItemCard({
    required this.data,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  State<NFTItemCard> createState() => _NFTItemCardState();
}

class _NFTItemCardState extends State<NFTItemCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  )..forward();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    final imageUrl = widget.data.imageUrl;

    late Widget imageWidget;

    if (widget.data.isENS) {
      imageWidget = NFTENSStubImage(widget.data.name);
    } else if (imageUrl.isNotEmpty) {
      if (imageUrl.endsWith('.svg')) {
        imageWidget = SvgPicture.network(
          imageUrl,
          placeholderBuilder: (_) => const NFTSquareStubImage(),
          fit: BoxFit.fitWidth,
        );
      } else {
        imageWidget = CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fitWidth,
        );
      }
    } else {
      imageWidget = Center(
        child: Text(
          widget.data.name,
          style: NFTTypography.header3SemiBold
              .copyWith(color: theme.colorScheme.mainTextColor),
        ),
      );
    }

    imageWidget = ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: imageWidget,
    );

    final heroTag = widget.data.heroTag;
    if (heroTag != null) {
      imageWidget = ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Hero(
          tag: heroTag,
          child: Material(
            color: Colors.transparent,
            child: imageWidget,
          ),
        ),
      );
    }

    final rarity = _getRarity(
      isENS: widget.data.isENS,
      nameLength: widget.data.name.length,
    );
    final gradientBackground = widget.data.isENS
        ? _getGradient(rarity, theme.assetTraitShieldThemeData)
        : null;

    final itemCardTheme = theme.itemCardThemeData.applyRarity(rarity, theme);

    return FadeTransition(
      opacity: _animation,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            color: itemCardTheme.backgroundColor,
            borderRadius: BorderRadius.circular(16),
            gradient: gradientBackground,
          ),
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: imageWidget,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Text(
                        widget.data.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: NFTTypography.body1Normal
                            .copyWith(color: itemCardTheme.textColor),
                      ),
                    ),
                  ),
                  IntrinsicWidth(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 2),
                            child: SvgPicture.asset(
                              NFTAssetsPaths.ethPurple,
                              package: NFTAssetsPaths.packageName,
                              width: 10,
                              height: 16,
                            ),
                          ),
                          Flexible(
                            child: Text(
                              widget.data.price,
                              maxLines: 1,
                              textAlign: TextAlign.end,
                              overflow: TextOverflow.ellipsis,
                              style: NFTTypography.body1SemiBold
                                  .copyWith(color: itemCardTheme.textColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  NFTAssetTraitRarity _getRarity({
    required bool isENS,
    required int nameLength,
  }) {
    if (!isENS) {
      return NFTAssetTraitRarity.common;
    }

    if (nameLength > 9) {
      return NFTAssetTraitRarity.common;
    } else if (nameLength > 7) {
      return NFTAssetTraitRarity.silver;
    } else {
      return NFTAssetTraitRarity.gold;
    }
  }

  Gradient? _getGradient(
      NFTAssetTraitRarity rarity, NFTAssetTraitShieldThemeData theme) {
    switch (rarity) {
      case NFTAssetTraitRarity.gold:
        return LinearGradient(colors: theme.goldColors);
      case NFTAssetTraitRarity.silver:
        return LinearGradient(colors: theme.silverColors);
      case NFTAssetTraitRarity.common:
        return null;
    }
  }
}
