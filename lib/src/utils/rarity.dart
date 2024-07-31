enum NFTAssetTraitRarity {
  gold,
  silver,
  common,
}

extension NFTAssetTraitRarityX on NFTAssetTraitRarity {
  bool get isGold => this == NFTAssetTraitRarity.gold;
  bool get isSilver => this == NFTAssetTraitRarity.silver;
  bool get isCommon => this == NFTAssetTraitRarity.common;

  bool get isRare => isGold || isSilver;
}
