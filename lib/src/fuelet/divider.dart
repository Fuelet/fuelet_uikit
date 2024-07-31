import 'package:flutter/material.dart';

import '../../fuelet_uikit.dart';

class FLTDivider extends StatelessWidget {
  const FLTDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: NFTTheme.of(context).dividerThemeData.color,
      height: 1.5,
      thickness: 1.5,
    );
  }
}
