import 'package:flutter/material.dart';
import '../../fuelet_uikit.dart';

class CircleBackButton extends StatelessWidget {
  const CircleBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context, rootNavigator: true).pop();
        },
        child: CircleAvatar(
          backgroundColor: theme.colorScheme.backgroundColorAccent,
          radius: 20,
          child: Center(
            child: Image.asset(
              NFTAssetsPaths.arrowLeft,
              package: NFTAssetsPaths.packageName,
              width: 20,
              height: 20,
              color: FLTColors.grey9D,
            ),
          ),
        ),
      ),
    );
  }
}
