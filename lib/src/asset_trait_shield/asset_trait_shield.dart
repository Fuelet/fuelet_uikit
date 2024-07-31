import 'package:flutter/widgets.dart';

import '../theme/theme.dart';
import '../utils/rarity.dart';
import 'asset_trait_shield_theme_data.dart';

class NFTAssetTraitShield extends StatelessWidget {
  final String traitTitle;
  final String traitValue;
  final double traitRarityPercent;
  final NFTAssetTraitRarity rarity;

  const NFTAssetTraitShield({
    required this.traitTitle,
    required this.traitValue,
    required this.traitRarityPercent,
    required this.rarity,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context).assetTraitShieldThemeData;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: _getGradient(theme),
        color: rarity.isCommon ? theme.commonTraitBackgroundColor : null,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              traitTitle,
              style: theme.traitTitleTextStyle,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    traitValue,
                    overflow: TextOverflow.ellipsis,
                    style: rarity.isRare
                        ? theme.rareTraitValueTextStyle
                        : theme.commonTraitValueTextStyle,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  _formattedPercent(traitRarityPercent),
                  style: rarity.isRare
                      ? theme.rareTraitRarityTextStyle
                      : theme.commonTraitRarityTextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formattedPercent(double percent) {
    late String result;

    if (percent < 2) {
      result = percent.toStringAsFixed(2);
    } else {
      result = percent.toInt().toString();
    }

    return '$result%';
  }

  Gradient? _getGradient(NFTAssetTraitShieldThemeData theme) {
    return !rarity.isCommon
        ? LinearGradient(
            colors: [
              if (rarity.isGold)
                ...theme.goldColors
              else if (rarity.isSilver)
                ...theme.silverColors
            ],
          )
        : null;
  }
}
