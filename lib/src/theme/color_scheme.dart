import 'package:flutter/material.dart';

import '../../fuelet_uikit.dart';

class NFTColorScheme {
  final Color backgroundColor;
  final Color backgroundColorContrastive;
  final Color backgroundColorSoft;
  final Color backgroundColorAccent;
  final Color backgroundColorAccentNoOpacity;
  final Color mainTextColor;
  final Color minorTextColor;
  final Color minorDarkTextColor;
  final Color minorLightTextColor;
  final Color activeButtonTextColor;
  final Color differentThemeMainColor;
  final Color infoBannerTextColor;
  final Color infoBannerColor;
  final Color topBannerButtonColor;
  final Color shimmerColor;
  final Color tooltipColor;
  final Color differentMinorTextColor;
  final Color primaryBtnTxtColor;
  final Color primaryBtnBackgroundColor;
  final Color seedPhraseTextColor;
  final Color walletListItemBorderColor;
  final Color radioBtnEnableStateBackgroundColor;
  final Color walletAddedLable;
  final Color walletAddedLableBackground;
  final Color progressIndicatorColor;
  final Color importWalletIconColor;
  final Color transactionActionBtnBackgroundColor;
  final Color transactionActionTextColor;
  final Color bottomNavActiveItemColor;
  final Color additionalOfferListItemBorderColor;
  final Color additionalOfferListItemBackgroundColor;
  final Color additionalOfferActionBtnBackgroundColor;
  final Color additionalOfferTittleBackgroundColor;
  final Color additionalOfferDescriptionBackgroundColor;
  final Color additionalOfferBtnTxtBackgroundColor;
  final Color additionalOfferIndicatorColor;
  final Color additionalOfferSelectedIndicatorColor;
  final Color finishSettingUpIconBackgroundColor;
  final Color finishSettingUpIconColor;
  final Color finishSettingUpListBackgroundColor;
  final Color finishSettingUpListDividerBackgroundColor;
  final Color finishSettingUpListBorderColor;
  final Color manageTokensBackgroundColor;
  final Color coloredText;

  const NFTColorScheme(
      {required this.backgroundColor,
      required this.backgroundColorContrastive,
      required this.backgroundColorSoft,
      required this.backgroundColorAccent,
      required this.backgroundColorAccentNoOpacity,
      required this.mainTextColor,
      required this.minorTextColor,
      required this.minorDarkTextColor,
      required this.minorLightTextColor,
      required this.activeButtonTextColor,
      required this.differentThemeMainColor,
      required this.infoBannerTextColor,
      required this.infoBannerColor,
      required this.topBannerButtonColor,
      required this.shimmerColor,
      required this.differentMinorTextColor,
      required this.tooltipColor,
      required this.primaryBtnBackgroundColor,
      required this.primaryBtnTxtColor,
      required this.seedPhraseTextColor,
      required this.walletListItemBorderColor,
      required this.radioBtnEnableStateBackgroundColor,
      required this.walletAddedLable,
      required this.walletAddedLableBackground,
      required this.progressIndicatorColor,
      required this.importWalletIconColor,
      required this.transactionActionBtnBackgroundColor,
      required this.bottomNavActiveItemColor,
      required this.additionalOfferListItemBorderColor,
      required this.additionalOfferListItemBackgroundColor,
      required this.additionalOfferActionBtnBackgroundColor,
      required this.additionalOfferTittleBackgroundColor,
      required this.additionalOfferDescriptionBackgroundColor,
      required this.additionalOfferBtnTxtBackgroundColor,
      required this.additionalOfferIndicatorColor,
      required this.additionalOfferSelectedIndicatorColor,
      required this.finishSettingUpIconBackgroundColor,
      required this.finishSettingUpIconColor,
      required this.finishSettingUpListBackgroundColor,
      required this.finishSettingUpListDividerBackgroundColor,
      required this.finishSettingUpListBorderColor,
      required this.transactionActionTextColor,
      required this.manageTokensBackgroundColor,
      required this.coloredText});

  static NFTColorScheme get light => NFTColorScheme(
      backgroundColor: NFTColors.white,
      backgroundColorContrastive: NFTColors.white,
      backgroundColorSoft: NFTColors.greyF5,
      backgroundColorAccent: NFTColors.greyF5,
      backgroundColorAccentNoOpacity: NFTColors.greyF5,
      mainTextColor: NFTColors.black,
      minorTextColor: NFTColors.grey9D,
      minorDarkTextColor: NFTColors.grey6D,
      minorLightTextColor: NFTColors.greyB2,
      activeButtonTextColor: NFTColors.charlestonGreen2F,
      differentThemeMainColor: NFTColors.white,
      infoBannerTextColor: NFTColors.charlestonGreen2F,
      infoBannerColor: NFTColors.greyF5,
      topBannerButtonColor: NFTColors.white,
      shimmerColor: FLTColors.greyF5,
      tooltipColor: NFTColors.greyCC,
      differentMinorTextColor: NFTColors.grey6D,
      primaryBtnBackgroundColor: FLTColors.greenCow,
      primaryBtnTxtColor: NFTColors.charlestonGreen2F,
      seedPhraseTextColor: FLTColors.environmentalStudy,
      walletListItemBorderColor: FLTColors.greenCow,
      radioBtnEnableStateBackgroundColor: FLTColors.greenCow,
      walletAddedLable: FLTColors.greenCow,
      walletAddedLableBackground: FLTColors.greenCow,
      progressIndicatorColor: FLTColors.greenCow,
      importWalletIconColor: FLTColors.charlestonGreen2F,
      transactionActionBtnBackgroundColor: NFTColors.greyF5,
      transactionActionTextColor: NFTColors.charlestonGreen2F,
      bottomNavActiveItemColor: FLTColors.environmentalStudy,
      additionalOfferListItemBorderColor: FLTColors.greyF5,
      additionalOfferListItemBackgroundColor: FLTColors.greyF5,
      additionalOfferActionBtnBackgroundColor: FLTColors.greenCow,
      additionalOfferTittleBackgroundColor: FLTColors.charlestonGreen2F,
      additionalOfferDescriptionBackgroundColor: FLTColors.grey9D,
      additionalOfferBtnTxtBackgroundColor: FLTColors.darkBackground,
      additionalOfferIndicatorColor: FLTColors.grey6D.withOpacity(0.1),
      additionalOfferSelectedIndicatorColor: FLTColors.cerebralGrey,
      finishSettingUpIconBackgroundColor: FLTColors.greenCow,
      finishSettingUpIconColor: FLTColors.environmentalStudy,
      finishSettingUpListBackgroundColor: Colors.transparent,
      finishSettingUpListDividerBackgroundColor: FLTColors.unicornSilver,
      finishSettingUpListBorderColor: FLTColors.unicornSilver,
      manageTokensBackgroundColor: FLTColors.greyF5,
      coloredText: FLTColors.environmentalStudy);

  static NFTColorScheme get dark => NFTColorScheme(
      backgroundColor: FLTColors.darkBackground,
      backgroundColorContrastive: NFTColors.darkGreyBackground,
      backgroundColorSoft: NFTColors.darkBackground,
      backgroundColorAccent: NFTColors.darkGreyBackground,
      backgroundColorAccentNoOpacity: NFTColors.darkGreyBackgroundNoOpacity,
      mainTextColor: NFTColors.white,
      minorTextColor: NFTColors.grey6D,
      minorDarkTextColor: NFTColors.grey9D,
      minorLightTextColor: NFTColors.grey6D,
      activeButtonTextColor: NFTColors.grey6D,
      differentThemeMainColor: NFTColors.black,
      infoBannerTextColor: NFTColors.grey9D,
      infoBannerColor: NFTColors.charlestonGreen2F,
      topBannerButtonColor: NFTColors.granitBlack39,
      shimmerColor: NFTColors.white,
      differentMinorTextColor: NFTColors.grey9D,
      tooltipColor: NFTColors.darkGrey19,
      primaryBtnBackgroundColor: FLTColors.greenCow,
      primaryBtnTxtColor: NFTColors.charlestonGreen2F,
      seedPhraseTextColor: FLTColors.greenCow,
      walletListItemBorderColor: FLTColors.greenCow,
      radioBtnEnableStateBackgroundColor: FLTColors.greenCow,
      walletAddedLable: FLTColors.greenCow,
      walletAddedLableBackground: FLTColors.greenCow,
      progressIndicatorColor: FLTColors.greenCow,
      importWalletIconColor: FLTColors.charlestonGreen2F,
      transactionActionBtnBackgroundColor: NFTColors.charlestonGreen2F,
      transactionActionTextColor: NFTColors.grey9D,
      bottomNavActiveItemColor: FLTColors.greenCow,
      additionalOfferListItemBorderColor: NFTColors.grey6D,
      additionalOfferListItemBackgroundColor: Colors.transparent,
      additionalOfferActionBtnBackgroundColor: FLTColors.greenCow,
      additionalOfferTittleBackgroundColor: NFTColors.white,
      additionalOfferDescriptionBackgroundColor: FLTColors.grey6D,
      additionalOfferBtnTxtBackgroundColor: FLTColors.greenCow,
      additionalOfferIndicatorColor: Colors.white.withOpacity(0.1),
      additionalOfferSelectedIndicatorColor: FLTColors.grey9D,
      finishSettingUpIconBackgroundColor: FLTColors.environmentalStudy,
      finishSettingUpIconColor: FLTColors.greenCow,
      finishSettingUpListBackgroundColor: NFTColors.darkGreyBackground,
      finishSettingUpListDividerBackgroundColor: NFTColors.grey6D,
      finishSettingUpListBorderColor: NFTColors.darkGreyBackground,
      manageTokensBackgroundColor: FLTColors.charlestonGreen2F,
      coloredText: FLTColors.greenCow);

  NFTColorScheme copyWith(
      {Color? backgroundColor,
      Color? backgroundColorContrastive,
      Color? backgroundColorSoft,
      Color? backgroundColorAccent,
      Color? backgroundColorAccentNoOpacity,
      Color? mainTextColor,
      Color? minorTextColor,
      Color? minorDarkTextColor,
      Color? minorLightTextColor,
      Color? activeButtonTextColor,
      Color? differentThemeMainColor,
      Color? infoBannerTextColor,
      Color? infoBannerColor,
      Color? topBannerButtonColor,
      Color? shimmerColor,
      Color? differentMinorTextColor,
      Color? tooltipColor,
      Color? primaryBtnBackgroundColor,
      Color? primaryBtnTxtColor,
      Color? seedPhraseTextColor,
      Color? walletListItemBorderColor,
      Color? radioBtnEnableStateBackgroundColor,
      Color? walletAddedLable,
      Color? progressIndicatorColor,
      Color? walletAddedLableBackground,
      Color? importWalletIconColor,
      Color? transactionActionBtnBackgroundColor,
      Color? transactionActionTextColor,
      Color? bottomNavActiveItemColor,
      Color? additionalOfferListItemBorderColor,
      Color? additionalOfferListItemBackgroundColor,
      Color? additionalOfferActionBtnBackgroundColor,
      Color? additionalOfferTittleBackgroundColor,
      Color? additionalOfferDescriptionBackgroundColor,
      Color? additionalOfferBtnTxtBackgroundColor,
      Color? additionalOfferIndicatorColor,
      Color? additionalOfferSelectedIndicatorColor,
      Color? finishSettingUpIconBackgroundColor,
      Color? finishSettingUpIconColor,
      Color? finishSettingUpListBackgroundColor,
      Color? finishSettingUpListDividerBackgroundColor,
      Color? finishSettingUpListBorderColor,
      Color? manageTokensBackgroundColor,
      Color? coloredText}) {
    return NFTColorScheme(
        backgroundColor: backgroundColor ?? this.backgroundColor,
        backgroundColorContrastive:
            backgroundColorContrastive ?? this.backgroundColorContrastive,
        backgroundColorSoft: backgroundColorSoft ?? this.backgroundColorSoft,
        backgroundColorAccent:
            backgroundColorAccent ?? this.backgroundColorAccent,
        backgroundColorAccentNoOpacity: backgroundColorAccentNoOpacity ??
            this.backgroundColorAccentNoOpacity,
        mainTextColor: mainTextColor ?? this.mainTextColor,
        minorTextColor: minorTextColor ?? this.minorTextColor,
        minorDarkTextColor: minorDarkTextColor ?? this.minorDarkTextColor,
        minorLightTextColor: minorLightTextColor ?? this.minorLightTextColor,
        activeButtonTextColor:
            activeButtonTextColor ?? this.activeButtonTextColor,
        differentThemeMainColor:
            differentThemeMainColor ?? this.differentThemeMainColor,
        infoBannerTextColor: infoBannerTextColor ?? this.infoBannerTextColor,
        topBannerButtonColor: topBannerButtonColor ?? this.topBannerButtonColor,
        infoBannerColor: infoBannerColor ?? this.infoBannerColor,
        shimmerColor: shimmerColor ?? this.shimmerColor,
        differentMinorTextColor:
            differentMinorTextColor ?? this.differentMinorTextColor,
        tooltipColor: tooltipColor ?? this.tooltipColor,
        primaryBtnTxtColor: primaryBtnTxtColor ?? this.primaryBtnTxtColor,
        seedPhraseTextColor: seedPhraseTextColor ?? this.seedPhraseTextColor,
        primaryBtnBackgroundColor:
            primaryBtnBackgroundColor ?? this.primaryBtnBackgroundColor,
        walletListItemBorderColor:
            walletListItemBorderColor ?? this.walletListItemBorderColor,
        radioBtnEnableStateBackgroundColor: radioBtnEnableStateBackgroundColor ??
            this.radioBtnEnableStateBackgroundColor,
        walletAddedLable: walletAddedLable ?? this.walletAddedLable,
        walletAddedLableBackground:
            walletAddedLableBackground ?? this.walletAddedLableBackground,
        progressIndicatorColor:
            progressIndicatorColor ?? this.progressIndicatorColor,
        importWalletIconColor:
            importWalletIconColor ?? this.importWalletIconColor,
        transactionActionBtnBackgroundColor: transactionActionBtnBackgroundColor ??
            this.transactionActionBtnBackgroundColor,
        transactionActionTextColor:
            transactionActionTextColor ?? this.transactionActionTextColor,
        bottomNavActiveItemColor:
            bottomNavActiveItemColor ?? this.bottomNavActiveItemColor,
        additionalOfferListItemBorderColor: additionalOfferListItemBorderColor ??
            this.additionalOfferListItemBorderColor,
        additionalOfferListItemBackgroundColor:
            additionalOfferListItemBackgroundColor ??
                this.additionalOfferListItemBackgroundColor,
        additionalOfferActionBtnBackgroundColor:
            additionalOfferActionBtnBackgroundColor ??
                this.additionalOfferActionBtnBackgroundColor,
        additionalOfferTittleBackgroundColor: additionalOfferTittleBackgroundColor ??
            this.additionalOfferTittleBackgroundColor,
        additionalOfferDescriptionBackgroundColor:
            additionalOfferDescriptionBackgroundColor ??
                this.additionalOfferDescriptionBackgroundColor,
        additionalOfferBtnTxtBackgroundColor: additionalOfferBtnTxtBackgroundColor ??
            this.additionalOfferBtnTxtBackgroundColor,
        additionalOfferIndicatorColor:
            additionalOfferIndicatorColor ?? this.additionalOfferIndicatorColor,
        additionalOfferSelectedIndicatorColor: additionalOfferSelectedIndicatorColor ??
            this.additionalOfferSelectedIndicatorColor,
        finishSettingUpIconBackgroundColor: finishSettingUpIconBackgroundColor ??
            this.finishSettingUpIconBackgroundColor,
        finishSettingUpIconColor: finishSettingUpIconColor ?? this.finishSettingUpIconColor,
        finishSettingUpListBackgroundColor: finishSettingUpListBackgroundColor ?? this.finishSettingUpListBackgroundColor,
        finishSettingUpListDividerBackgroundColor: finishSettingUpListDividerBackgroundColor ?? this.finishSettingUpListDividerBackgroundColor,
        finishSettingUpListBorderColor: finishSettingUpListBorderColor ?? this.finishSettingUpListBorderColor,
        manageTokensBackgroundColor: manageTokensBackgroundColor ?? this.manageTokensBackgroundColor,
        coloredText: coloredText ?? this.coloredText);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTColorScheme &&
          runtimeType == other.runtimeType &&
          backgroundColor == other.backgroundColor &&
          backgroundColorContrastive == other.backgroundColorContrastive &&
          backgroundColorSoft == other.backgroundColorSoft &&
          backgroundColorAccent == other.backgroundColorAccent &&
          backgroundColorAccentNoOpacity ==
              other.backgroundColorAccentNoOpacity &&
          mainTextColor == other.mainTextColor &&
          minorTextColor == other.minorTextColor &&
          minorLightTextColor == other.minorLightTextColor &&
          infoBannerTextColor == other.infoBannerTextColor &&
          infoBannerColor == other.infoBannerColor &&
          topBannerButtonColor == other.topBannerButtonColor &&
          shimmerColor == other.shimmerColor &&
          activeButtonTextColor == other.activeButtonTextColor &&
          tooltipColor == other.tooltipColor &&
          minorDarkTextColor == other.minorDarkTextColor &&
          primaryBtnBackgroundColor == other.primaryBtnBackgroundColor &&
          primaryBtnTxtColor == other.primaryBtnTxtColor &&
          seedPhraseTextColor == other.seedPhraseTextColor &&
          walletListItemBorderColor == other.walletListItemBorderColor &&
          radioBtnEnableStateBackgroundColor ==
              other.radioBtnEnableStateBackgroundColor &&
          walletAddedLable == other.walletAddedLable &&
          walletAddedLableBackground == other.walletAddedLableBackground &&
          progressIndicatorColor == other.progressIndicatorColor &&
          importWalletIconColor == other.importWalletIconColor &&
          transactionActionBtnBackgroundColor ==
              other.transactionActionBtnBackgroundColor &&
          transactionActionTextColor == other.transactionActionTextColor &&
          bottomNavActiveItemColor == other.bottomNavActiveItemColor &&
          additionalOfferListItemBorderColor ==
              other.bottomNavActiveItemColor &&
          additionalOfferListItemBackgroundColor ==
              other.additionalOfferListItemBackgroundColor &&
          additionalOfferActionBtnBackgroundColor ==
              other.additionalOfferActionBtnBackgroundColor &&
          additionalOfferTittleBackgroundColor ==
              other.additionalOfferTittleBackgroundColor &&
          additionalOfferDescriptionBackgroundColor ==
              other.additionalOfferDescriptionBackgroundColor &&
          additionalOfferBtnTxtBackgroundColor ==
              other.additionalOfferBtnTxtBackgroundColor &&
          additionalOfferIndicatorColor ==
              other.additionalOfferIndicatorColor &&
          additionalOfferSelectedIndicatorColor ==
              other.additionalOfferSelectedIndicatorColor &&
          finishSettingUpIconBackgroundColor ==
              other.finishSettingUpIconBackgroundColor &&
          finishSettingUpIconColor == other.finishSettingUpIconColor &&
          finishSettingUpListBackgroundColor ==
              other.finishSettingUpListBackgroundColor &&
          finishSettingUpListDividerBackgroundColor ==
              other.finishSettingUpListDividerBackgroundColor &&
          finishSettingUpListBorderColor ==
              other.finishSettingUpListBorderColor &&
          manageTokensBackgroundColor == other.manageTokensBackgroundColor &&
          coloredText == other.coloredText;

  @override
  int get hashCode =>
      backgroundColor.hashCode ^
      backgroundColorContrastive.hashCode ^
      backgroundColorSoft.hashCode ^
      backgroundColorAccent.hashCode ^
      mainTextColor.hashCode ^
      minorTextColor.hashCode ^
      minorLightTextColor.hashCode ^
      infoBannerTextColor.hashCode ^
      infoBannerColor.hashCode ^
      topBannerButtonColor.hashCode ^
      activeButtonTextColor.hashCode ^
      shimmerColor.hashCode ^
      tooltipColor.hashCode ^
      minorDarkTextColor.hashCode ^
      primaryBtnBackgroundColor.hashCode ^
      primaryBtnTxtColor.hashCode ^
      seedPhraseTextColor.hashCode ^
      walletListItemBorderColor.hashCode ^
      radioBtnEnableStateBackgroundColor.hashCode ^
      walletAddedLable.hashCode ^
      walletAddedLableBackground.hashCode ^
      progressIndicatorColor.hashCode ^
      importWalletIconColor.hashCode ^
      transactionActionBtnBackgroundColor.hashCode ^
      transactionActionTextColor.hashCode ^
      bottomNavActiveItemColor.hashCode ^
      additionalOfferListItemBorderColor.hashCode ^
      additionalOfferListItemBackgroundColor.hashCode ^
      additionalOfferActionBtnBackgroundColor.hashCode ^
      additionalOfferTittleBackgroundColor.hashCode ^
      additionalOfferDescriptionBackgroundColor.hashCode ^
      additionalOfferBtnTxtBackgroundColor.hashCode ^
      additionalOfferIndicatorColor.hashCode ^
      additionalOfferSelectedIndicatorColor.hashCode ^
      finishSettingUpIconBackgroundColor.hashCode ^
      finishSettingUpIconColor.hashCode ^
      finishSettingUpListBackgroundColor.hashCode ^
      finishSettingUpListDividerBackgroundColor.hashCode ^
      finishSettingUpListBorderColor.hashCode ^
      manageTokensBackgroundColor.hashCode ^
      coloredText.hashCode;
}
