import '../asset_summary/asset_summary_theme_data.dart';
import '../asset_trait_shield/asset_trait_shield_theme_data.dart';
import '../background_accent_gradient/theme_data.dart';
import '../balance_widget/balance_widget_theme_data.dart';
import '../button/theme_data.dart';
import '../chart/chart_theme_data.dart';
import '../collection_summary/collection_summary_theme_data.dart';
import '../currency_widget/currency_widget_theme_data.dart';
import '../divider/divider_theme_data.dart';
import '../item_card/item_card_theme_data.dart';
import '../section/section_theme_data.dart';
import '../shimmer/shimmer_box_theme_data.dart';
import '../slider/slider_theme_data.dart';
import '../square_stub_image/theme_data.dart';
import '../switch/switch_theme_data.dart';
import '../switcher/switcher_theme_data.dart';
import '../tabbar/tabbar_theme_data.dart';
import '../text_field/theme_data.dart';
import '../tooltip/theme_data.dart';
import 'color_scheme.dart';

/// Base theme data for app components.
///
/// (!) Do not forget to regenerate `copyWith`, `==` and `hashCode`
/// after modifying.
class NFTThemeData {
  final NFTSquareStubImageThemeData squareStubImageThemeData;
  final NFTDividerThemeData dividerThemeData;
  final NFTAssetSummaryThemeData assetSummaryThemeData;
  final NFTAssetTraitShieldThemeData assetTraitShieldThemeData;
  final NFTItemCardThemeData itemCardThemeData;
  final NFTCollectionSummaryThemeData collectionSummaryThemeData;
  final NFTChartThemeData chartThemeData;
  final NFTCurrencyWidgetThemeData currencyWidgetThemeData;
  final NFTShimmerBoxThemeData shimmerBoxThemeData;
  final NFTButtonThemeData buttonThemeData;
  final NFTTextFieldThemeData textFieldThemeData;
  final NFTBackgroundAccentGradientContainerThemeData
      backgroundAccentGradientContainerThemeData;
  final NFTColorScheme colorScheme;
  final NFTTabBarThemeData tabBarThemeData;
  final NFTSwitcherThemeData switcherThemeData;
  final NFTTooltipThemeData tooltipThemeData;
  final NFTSliderThemeData sliderThemeData;
  final NFTSwitchThemeData switchThemeData;
  final NFTBalanceWidgetThemeData balanceWidgetThemeData;
  final NFTListSectionThemeData listSectionThemeData;
  final bool isDark;
  final bool isLight;

  NFTThemeData({
    required this.squareStubImageThemeData,
    required this.dividerThemeData,
    required this.assetSummaryThemeData,
    required this.assetTraitShieldThemeData,
    required this.itemCardThemeData,
    required this.collectionSummaryThemeData,
    required this.chartThemeData,
    required this.currencyWidgetThemeData,
    required this.shimmerBoxThemeData,
    required this.buttonThemeData,
    required this.textFieldThemeData,
    required this.backgroundAccentGradientContainerThemeData,
    required this.colorScheme,
    required this.tabBarThemeData,
    required this.switcherThemeData,
    required this.tooltipThemeData,
    required this.sliderThemeData,
    required this.switchThemeData,
    required this.balanceWidgetThemeData,
    required this.listSectionThemeData,
    required this.isDark,
    required this.isLight,
  });

  static NFTThemeData get light => NFTThemeData(
        squareStubImageThemeData: NFTSquareStubImageThemeData.light,
        dividerThemeData: NFTDividerThemeData.light,
        assetSummaryThemeData: NFTAssetSummaryThemeData.light,
        assetTraitShieldThemeData: NFTAssetTraitShieldThemeData.light,
        itemCardThemeData: NFTItemCardThemeData.light,
        collectionSummaryThemeData: NFTCollectionSummaryThemeData.light,
        chartThemeData: NFTChartThemeData.light,
        currencyWidgetThemeData: NFTCurrencyWidgetThemeData.light,
        shimmerBoxThemeData: NFTShimmerBoxThemeData.light,
        buttonThemeData: NFTButtonThemeData.light,
        textFieldThemeData: NFTTextFieldThemeData.light,
        backgroundAccentGradientContainerThemeData:
            NFTBackgroundAccentGradientContainerThemeData.light,
        colorScheme: NFTColorScheme.light,
        tabBarThemeData: NFTTabBarThemeData.light,
        switcherThemeData: NFTSwitcherThemeData.light,
        tooltipThemeData: NFTTooltipThemeData.light,
        sliderThemeData: NFTSliderThemeData.light,
        switchThemeData: NFTSwitchThemeData.light,
        balanceWidgetThemeData: NFTBalanceWidgetThemeData.light,
        listSectionThemeData: NFTListSectionThemeData.light,
        isDark: false,
        isLight: true,
      );

  static NFTThemeData get dark => NFTThemeData(
        squareStubImageThemeData: NFTSquareStubImageThemeData.dark,
        dividerThemeData: NFTDividerThemeData.dark,
        assetSummaryThemeData: NFTAssetSummaryThemeData.dark,
        assetTraitShieldThemeData: NFTAssetTraitShieldThemeData.dark,
        itemCardThemeData: NFTItemCardThemeData.dark,
        collectionSummaryThemeData: NFTCollectionSummaryThemeData.dark,
        chartThemeData: NFTChartThemeData.dark,
        currencyWidgetThemeData: NFTCurrencyWidgetThemeData.dark,
        shimmerBoxThemeData: NFTShimmerBoxThemeData.dark,
        buttonThemeData: NFTButtonThemeData.dark,
        textFieldThemeData: NFTTextFieldThemeData.dark,
        backgroundAccentGradientContainerThemeData:
            NFTBackgroundAccentGradientContainerThemeData.dark,
        colorScheme: NFTColorScheme.dark,
        tabBarThemeData: NFTTabBarThemeData.dark,
        switcherThemeData: NFTSwitcherThemeData.dark,
        tooltipThemeData: NFTTooltipThemeData.dark,
        sliderThemeData: NFTSliderThemeData.dark,
        switchThemeData: NFTSwitchThemeData.dark,
        balanceWidgetThemeData: NFTBalanceWidgetThemeData.dark,
        listSectionThemeData: NFTListSectionThemeData.dark,
        isDark: true,
        isLight: false,
      );

  NFTThemeData copyWith({
    NFTSquareStubImageThemeData? squareStubImageThemeData,
    NFTDividerThemeData? dividerThemeData,
    NFTAssetSummaryThemeData? assetSummaryThemeData,
    NFTAssetTraitShieldThemeData? assetTraitShieldThemeData,
    NFTItemCardThemeData? itemCardThemeData,
    NFTCollectionSummaryThemeData? collectionSummaryThemeData,
    NFTChartThemeData? chartThemeData,
    NFTCurrencyWidgetThemeData? currencyWidgetThemeData,
    NFTShimmerBoxThemeData? shimmerBoxThemeData,
    NFTButtonThemeData? buttonThemeData,
    NFTTextFieldThemeData? textFieldThemeData,
    NFTBackgroundAccentGradientContainerThemeData?
        backgroundAccentGradientContainerThemeData,
    NFTColorScheme? colorScheme,
    NFTTabBarThemeData? tabBarThemeData,
    NFTSwitcherThemeData? switcherThemeData,
    NFTTooltipThemeData? tooltipThemeData,
    NFTSliderThemeData? sliderThemeData,
    NFTSwitchThemeData? switchThemeData,
    NFTBalanceWidgetThemeData? balanceWidgetThemeData,
    NFTListSectionThemeData? listSectionThemeData,
    bool? isDark,
    bool? isLight,
  }) {
    return NFTThemeData(
      squareStubImageThemeData:
          squareStubImageThemeData ?? this.squareStubImageThemeData,
      dividerThemeData: dividerThemeData ?? this.dividerThemeData,
      assetSummaryThemeData:
          assetSummaryThemeData ?? this.assetSummaryThemeData,
      assetTraitShieldThemeData:
          assetTraitShieldThemeData ?? this.assetTraitShieldThemeData,
      itemCardThemeData: itemCardThemeData ?? this.itemCardThemeData,
      collectionSummaryThemeData:
          collectionSummaryThemeData ?? this.collectionSummaryThemeData,
      chartThemeData: chartThemeData ?? this.chartThemeData,
      currencyWidgetThemeData:
          currencyWidgetThemeData ?? this.currencyWidgetThemeData,
      shimmerBoxThemeData: shimmerBoxThemeData ?? this.shimmerBoxThemeData,
      buttonThemeData: buttonThemeData ?? this.buttonThemeData,
      textFieldThemeData: textFieldThemeData ?? this.textFieldThemeData,
      backgroundAccentGradientContainerThemeData:
          backgroundAccentGradientContainerThemeData ??
              this.backgroundAccentGradientContainerThemeData,
      colorScheme: colorScheme ?? this.colorScheme,
      tabBarThemeData: tabBarThemeData ?? this.tabBarThemeData,
      switcherThemeData: switcherThemeData ?? this.switcherThemeData,
      tooltipThemeData: tooltipThemeData ?? this.tooltipThemeData,
      sliderThemeData: sliderThemeData ?? this.sliderThemeData,
      switchThemeData: switchThemeData ?? this.switchThemeData,
      balanceWidgetThemeData:
          balanceWidgetThemeData ?? this.balanceWidgetThemeData,
      listSectionThemeData: listSectionThemeData ?? this.listSectionThemeData,
      isDark: isDark ?? this.isDark,
      isLight: isLight ?? this.isLight,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTThemeData &&
          runtimeType == other.runtimeType &&
          squareStubImageThemeData == other.squareStubImageThemeData &&
          dividerThemeData == other.dividerThemeData &&
          assetSummaryThemeData == other.assetSummaryThemeData &&
          assetTraitShieldThemeData == other.assetTraitShieldThemeData &&
          itemCardThemeData == other.itemCardThemeData &&
          collectionSummaryThemeData == other.collectionSummaryThemeData &&
          chartThemeData == other.chartThemeData &&
          currencyWidgetThemeData == other.currencyWidgetThemeData &&
          shimmerBoxThemeData == other.shimmerBoxThemeData &&
          buttonThemeData == other.buttonThemeData &&
          textFieldThemeData == other.textFieldThemeData &&
          backgroundAccentGradientContainerThemeData ==
              other.backgroundAccentGradientContainerThemeData &&
          colorScheme == other.colorScheme &&
          tabBarThemeData == other.tabBarThemeData &&
          switcherThemeData == other.switcherThemeData &&
          tooltipThemeData == other.tooltipThemeData &&
          sliderThemeData == other.sliderThemeData &&
          switchThemeData == other.switchThemeData &&
          balanceWidgetThemeData == other.balanceWidgetThemeData &&
          listSectionThemeData == other.listSectionThemeData &&
          isDark == other.isDark &&
          isLight == other.isLight;

  @override
  int get hashCode =>
      squareStubImageThemeData.hashCode ^
      dividerThemeData.hashCode ^
      assetSummaryThemeData.hashCode ^
      assetTraitShieldThemeData.hashCode ^
      itemCardThemeData.hashCode ^
      collectionSummaryThemeData.hashCode ^
      chartThemeData.hashCode ^
      currencyWidgetThemeData.hashCode ^
      shimmerBoxThemeData.hashCode ^
      buttonThemeData.hashCode ^
      textFieldThemeData.hashCode ^
      backgroundAccentGradientContainerThemeData.hashCode ^
      colorScheme.hashCode ^
      tabBarThemeData.hashCode ^
      switcherThemeData.hashCode ^
      tooltipThemeData.hashCode ^
      sliderThemeData.hashCode ^
      switchThemeData.hashCode ^
      balanceWidgetThemeData.hashCode ^
      listSectionThemeData.hashCode ^
      isDark.hashCode ^
      isLight.hashCode;
}
