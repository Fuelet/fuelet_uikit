import 'package:flutter/rendering.dart';

import '../theme/constants/colors.dart';

class NFTBackgroundAccentGradientContainerThemeData {
  final Gradient gradient;

  const NFTBackgroundAccentGradientContainerThemeData({required this.gradient});

  static NFTBackgroundAccentGradientContainerThemeData get light =>
      NFTBackgroundAccentGradientContainerThemeData(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            NFTColors.pink,
            NFTColors.white.withOpacity(0.31),
          ],
        ),
      );

  static NFTBackgroundAccentGradientContainerThemeData get dark =>
      NFTBackgroundAccentGradientContainerThemeData(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            NFTColors.purple,
            NFTColors.darkBackground.withOpacity(0),
          ],
        ),
      );
}
