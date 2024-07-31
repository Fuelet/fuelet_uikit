// ignore_for_file: avoid_print
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fuelet_uikit/fuelet_uikit.dart';

const _apocalypticApesImageUrl =
    'https://lh3.googleusercontent.com/JnYVLZbfTcLlwnRa2Zm5NWXOHWlSH4YR3_TIbVjvyACSCsEszfm4xhV2IbP5q1yLrto2U3a7vYx8ud0fZ2HripLevu8mNXgX9Iop5w=s120';

const _chartData = {
  "2022-04-07T00:00:00": 28.0,
  "2022-04-08T00:00:00": 32.0,
  "2022-04-09T00:00:00": 34.0,
  "2022-04-10T00:00:00": 25.0,
  "2022-05-11T00:00:00": 29.0,
  "2022-05-12T00:00:00": 32.0,
  "2022-05-13T00:00:00": 34.0,
  "2022-05-14T00:00:00": 36.0,
  "2022-06-15T00:00:00": 34.0,
  "2022-06-16T00:00:00": 32.0,
  "2022-06-17T00:00:00": 30.0,
  "2022-06-18T00:00:00": 27.0,
  "2022-07-19T00:00:00": 35.0,
  "2022-07-20T00:00:00": 36.0,
  "2022-07-21T00:00:00": 38.0,
  "2022-07-22T08:00:00": 32.0,
};

const _months = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _isNightMode = false;

  @override
  Widget build(BuildContext context) {
    final theme = _isNightMode ? NFTThemeData.dark : NFTThemeData.light;

    return NFTTheme(
      data: theme,
      child: Builder(
        builder: (context) {
          final theme = NFTTheme.of(context);

          return MaterialApp(
            theme: ThemeData(primaryColor: NFTColors.purple),
            home: Scaffold(
              backgroundColor: theme.colorScheme.backgroundColor,
              appBar: NFTAppBar(
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'NFT ',
                        style: NFTTypography.body1SemiBold
                            .copyWith(color: NFTColors.purple),
                      ),
                      TextSpan(
                        text: 'UIKit',
                        style: NFTTypography.body1SemiBold
                            .copyWith(color: theme.colorScheme.mainTextColor),
                      ),
                    ],
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                actions: [
                  IconButton(
                    icon: Icon(_isNightMode
                        ? Icons.wb_sunny_outlined
                        : Icons.nightlight_round),
                    onPressed: _toggleNightMode,
                  ),
                ],
              ),
              body: const _Body(),
            ),
          );
        },
      ),
    );
  }

  void _toggleNightMode() => setState(() => _isNightMode = !_isNightMode);
}

class _Body extends StatefulWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final _textFieldFocusNode = FocusNode();

  final _ethBalance = '92.45';
  final _fiatBalance = '\$ 295 783';

  var _switchBalanceCurrency = false;

  double _sliderValue = 0.1;

  List<Widget> _items(BuildContext context) {
    final theme = NFTTheme.of(context);

    final dateFormat = DateFormat('yyyy-MM-DDTHH:mm:ss');

    final chartSpots = _chartData.entries.mapIndexed((index, element) {
      final dateTime = dateFormat.parse(element.key);

      return NFTChartSpot(
        index + 1,
        element.value,
        tooltipTitle: index == _chartData.length - 1
            ? 'Now'
            : '${_months[dateTime.month - 1]}, ${dateTime.day}',
        period: index == _chartData.length - 1
            ? 'Now'
            : _months[dateTime.month - 1],
        ethY: '${element.value.toStringAsFixed(0)} ETH',
        fiatY: '\$3,249',
      );
    }).toList();

    return [
      const SizedBox(height: 8),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: NFTBarChart(
            spots: chartSpots,
            touchCallback: () => print('yo'),
            tooltipData: (spots, index, theme) =>
                _getBarChartTooltipItem(spots, index, theme),
            maxY: 40,
            minY: 24,
            buttonsConfigs: [
              NFTChartButtonConfig('14d', true, () {}),
              NFTChartButtonConfig('1M', false, () {}),
              NFTChartButtonConfig('6M', false, () {}),
            ],
            titlesData: FlTitlesData(
              show: true,
              topTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, _) {
                    final index = value.toInt() - 1;

                    final period = chartSpots[index].period;

                    final first = index == 0;
                    final last = index == chartSpots.length - 1;
                    if (first || last) {
                      return Padding(
                        padding: first
                            ? const EdgeInsets.only(left: 8)
                            : const EdgeInsets.only(right: 8),
                        child: Text(
                          period,
                          style: NFTTypography.body3Normal.copyWith(
                              color: theme.colorScheme.minorLightTextColor),
                        ),
                      );
                    }

                    final previousPeriod = chartSpots[index - 1].period;

                    final shouldShow = period != previousPeriod;

                    return shouldShow
                        ? Text(
                            period,
                            style: NFTTypography.body3Normal.copyWith(
                                color: theme.colorScheme.minorLightTextColor),
                          )
                        : const SizedBox.shrink();
                  },
                ),
              ),
              bottomTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
          ),
        ),
      ),
      const SizedBox(height: 8),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: NFTChart(
            spots: chartSpots,
            touchCallback: () => print('yo'),
            getTooltipItems: (spots) => spots
                .map((spot) => _getLineChartTooltip(
                      chartSpots,
                      spot,
                      theme,
                    ))
                .toList(),
            maxY: 40,
            minY: 24,
            buttonsConfigs: [
              NFTChartButtonConfig('14d', true, () {}),
              NFTChartButtonConfig('1M', false, () {}),
              NFTChartButtonConfig('6M', false, () {}),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        child: NFTTextField(
          focusNode: _textFieldFocusNode,
          hintText: '0xPulse',
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        child: NFTButton(
          text: 'Some Title',
          onPressed: () => print('Button pressed'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: NFTSlider(
          value: _sliderValue,
          min: 0.001,
          max: 1,
          divisions: 100,
          onChanged: (newValue) => setState(() => _sliderValue = newValue),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: NFTBalanceWidget(
                primaryBalance: _ethBalance,
                secondaryBalance: _fiatBalance,
                changeTitle: '1.3%',
                change: 1.3,
                switchCurrency: _switchBalanceCurrency,
                onCurrencySwitcherTap: () => setState(
                    () => _switchBalanceCurrency = !_switchBalanceCurrency),
              ),
            ),
            ConstrainedBox(constraints: const BoxConstraints(maxWidth: 8)),
            const NFTCurrencyWidget(
              etherPrice: '\$3 342',
              etherSubtitle: 'ether',
              gweiPrice: '171 gwei',
              gweiSubtitle: 'fast',
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        child: Row(
          children: [
            Expanded(
              child: NFTBalanceWidget(
                primaryBalance: null,
                secondaryBalance: null,
                changeTitle: null,
                change: null,
                onCurrencySwitcherTap: () => print('SWITCH BALANCE'),
              ),
            ),
            ConstrainedBox(constraints: const BoxConstraints(maxWidth: 8)),
            const NFTCurrencyWidget(
              etherPrice: null,
              etherSubtitle: 'ether',
              gweiPrice: null,
              gweiSubtitle: 'fast',
            ),
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        child: NFTItemsGrid(
          shrinkWrap: true,
          scrollPhysics: NeverScrollableScrollPhysics(),
          data: [
            NFTItemCardData(
              imageUrl:
                  'https://lh3.googleusercontent.com/31aOMryS1FCsyXPpZiSpmOCHD-65pxCPSXtjSUocVIlFMcmk0O8wUGqsQ2l5oZGTtG8xjQCrAeHv4--K0CINY2We8MAOHvD5DSVj=w600',
              name: '#509',
              price: '2500',
            ),
            NFTItemLoadingCardData(),
            NFTItemCardData(
              imageUrl: '',
              name: '123.eth',
              price: '0.5',
              isENS: true,
            ),
            NFTItemCardData(
              imageUrl: '',
              name: '12345.eth',
              price: '0.3',
              isENS: true,
            ),
            NFTItemCardData(
              imageUrl: '',
              name: '123456.eth',
              price: '0.1',
              isENS: true,
            ),
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        child: NFTCollectionSummary(
          itemsCount: 9999,
          itemsTitle: 'items',
          ownersCount: 8495,
          ownersTitle: 'owners',
          floorPrice: 14.4,
          floorPriceTitle: 'floor price',
          volumeTraded: 179650,
          volumeTradedTitle: 'volume traded',
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        child: NFTAssetSummary(
          floorPriceTitle: 'floor price',
          floorPriceEth: '16',
          floorPriceUSD: '\$50.599',
          buyPriceTitle: 'buy price',
          buyPriceEth: '8',
          marketplaceTitle: 'OpenSea',
          socialServices: const {
            NFTAssetSocialServices.twitter,
            NFTAssetSocialServices.instagram,
            NFTAssetSocialServices.discord,
          },
          onMarketplaceTitleTap: () => print('MARKETPLACE TAP'),
          onSocialServiceIconTap: (network) => print('SOCIAL TAP $network'),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            NFTAssetTraitShield(
              traitTitle: 'mouth',
              traitValue: 'M1 Bored Cigar',
              traitRarityPercent: 0.58,
              rarity: NFTAssetTraitRarity.gold,
            ),
            NFTAssetTraitShield(
              traitTitle: 'hat',
              traitValue: 'M1 Cowboy Hat',
              traitRarityPercent: 1,
              rarity: NFTAssetTraitRarity.gold,
            ),
            NFTAssetTraitShield(
              traitTitle: 'clothes',
              traitValue: 'M1 Leather Punk Jacket',
              traitRarityPercent: 3,
              rarity: NFTAssetTraitRarity.silver,
            ),
            NFTAssetTraitShield(
              traitTitle: 'eyes',
              traitValue: 'M1 Closed',
              traitRarityPercent: 5,
              rarity: NFTAssetTraitRarity.silver,
            ),
            NFTAssetTraitShield(
              traitTitle: 'earring',
              traitValue: 'M1 Silver Hoop',
              traitRarityPercent: 6,
              rarity: NFTAssetTraitRarity.common,
            ),
          ],
        ),
      ),
      NFTListItem(
        onPressed: () => print('PRESSED!'),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(_apocalypticApesImageUrl),
        ),
        title: Text(
          'Apocalyptic Apes',
          style: NFTTypography.body1SemiBold.copyWith(
            color: theme.colorScheme.mainTextColor,
          ),
        ),
        subtitle: Text(
          '4 items',
          style: NFTTypography.body2Normal
              .copyWith(color: theme.colorScheme.minorTextColor),
        ),
        detailTitle: Text(
          '60 ETH',
          style: NFTTypography.body1SemiBold
              .copyWith(color: theme.colorScheme.mainTextColor),
        ),
        detailSubtitle: Text(
          '\$180000',
          style: NFTTypography.body3Normal
              .copyWith(color: theme.colorScheme.minorTextColor),
        ),
      ),
      NFTListItem(
        onPressed: () => print('PRESSED!'),
        leading: const NFTSquareStubImage(),
        title: Text(
          'Apocalyptic Apes',
          style: NFTTypography.body1SemiBold.copyWith(
            color: theme.colorScheme.mainTextColor,
          ),
        ),
        subtitle: Text(
          '4 items',
          style: NFTTypography.body2Normal
              .copyWith(color: theme.colorScheme.minorTextColor),
        ),
        detailTitle: Text(
          '60 ETH',
          style: NFTTypography.body1SemiBold
              .copyWith(color: theme.colorScheme.mainTextColor),
        ),
        detailSubtitle: Text(
          '\$180000',
          style: NFTTypography.body3Normal
              .copyWith(color: theme.colorScheme.minorTextColor),
        ),
      ),
      NFTListItem(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 56,
              minWidth: 56,
            ),
            child: const NFTPlaceholderShimmer(
              child: NFTPlaceholderBox(),
            ),
          ),
        ),
        title: Text(
          'Apocalyptic Apes',
          style: NFTTypography.body1SemiBold.copyWith(
            color: theme.colorScheme.mainTextColor,
          ),
        ),
        subtitle: Text(
          '4 items',
          style: NFTTypography.body2Normal
              .copyWith(color: theme.colorScheme.minorTextColor),
        ),
        detailTitle: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 22,
            maxWidth: 64,
          ),
          child: const NFTPlaceholderShimmer(
            child: NFTPlaceholderBox(),
          ),
        ),
        detailSubtitle: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 16,
            maxWidth: 108,
          ),
          child: const NFTPlaceholderShimmer(
            child: NFTPlaceholderBox(),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final items = _items(context);

    return GestureDetector(
      onTap: () => _textFieldFocusNode.unfocus(),
      child: ListView.separated(
        itemBuilder: (context, index) => items[index],
        separatorBuilder: (_, __) => const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
        ),
        itemCount: items.length,
      ),
    );
  }

  LineTooltipItem _getLineChartTooltip(
    List<NFTChartSpot> chartSpots,
    LineBarSpot spot,
    NFTThemeData theme,
  ) =>
      LineTooltipItem(
        chartSpots[spot.spotIndex].tooltipTitle,
        NFTTypography.body5Normal.copyWith(color: NFTColors.grey6D),
        children: [
          const TextSpan(text: '\n'),
          TextSpan(
            text: chartSpots[spot.spotIndex].ethY,
            style: NFTTypography.body3Normal
                .copyWith(color: theme.chartThemeData.tooltipAccentTextColor),
          ),
          const TextSpan(text: ' '),
          TextSpan(
            text: chartSpots[spot.spotIndex].fiatY,
            style: NFTTypography.body3Normal.copyWith(color: NFTColors.blue),
          ),
        ],
      );

  BarTooltipItem _getBarChartTooltipItem(
    List<NFTChartSpot> chartSpots,
    int barGroupIndex,
    NFTThemeData theme,
  ) =>
      BarTooltipItem(
        chartSpots[barGroupIndex].tooltipTitle,
        NFTTypography.body5Normal.copyWith(color: NFTColors.grey6D),
        children: [
          const TextSpan(text: '\n'),
          TextSpan(
            text: chartSpots[barGroupIndex].ethY,
            style: NFTTypography.body3Normal
                .copyWith(color: theme.chartThemeData.tooltipAccentTextColor),
          ),
          const TextSpan(text: ' '),
          TextSpan(
            text: chartSpots[barGroupIndex].fiatY,
            style: NFTTypography.body3Normal.copyWith(color: NFTColors.blue),
          ),
        ],
      );
}
