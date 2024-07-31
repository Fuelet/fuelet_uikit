import 'package:flutter/widgets.dart';

import '../theme/theme.dart';

class NFTSquareStubImage extends StatelessWidget {
  const NFTSquareStubImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = NFTTheme.of(context).squareStubImageThemeData;

    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: themeData.outerColor,
      ),
      child: Center(
        child: Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: themeData.innerColor,
          ),
        ),
      ),
    );
  }
}
