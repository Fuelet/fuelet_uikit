import 'package:flutter/widgets.dart';

import '../../fuelet_uikit.dart';

class NFTBackgroundAccentGradientContainer extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;

  const NFTBackgroundAccentGradientContainer({
    this.borderRadius,
    Key? key,
  }) : super(key: key);

  factory NFTBackgroundAccentGradientContainer.topRounded() =>
      const NFTBackgroundAccentGradientContainer(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final theme =
        NFTTheme.of(context).backgroundAccentGradientContainerThemeData;

    return Container(
      decoration: BoxDecoration(
        gradient: theme.gradient,
        borderRadius: borderRadius,
      ),
    );
  }
}
