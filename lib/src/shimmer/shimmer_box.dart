import 'package:flutter/widgets.dart';

import '../theme/theme.dart';
import 'shimmer.dart';

class NFTPlaceholderBox extends StatelessWidget {
  const NFTPlaceholderBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context).shimmerBoxThemeData;

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        color: theme.boxColor,
      ),
    );
  }
}

class NFTPlaceholderShimmer extends StatelessWidget {
  final Widget child;

  const NFTPlaceholderShimmer({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context).shimmerBoxThemeData;

    return NFTShimmer(
      duration: theme.duration,
      color: theme.shimmerSecondaryColor,
      waveColor: theme.shimmerColor,
      waveWidth: theme.waveWidth,
      waveDelay: theme.waveDelay,
      child: child,
    );
  }
}
