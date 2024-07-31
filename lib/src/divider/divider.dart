import 'package:flutter/material.dart';

import '../theme/theme.dart';

class NFTDivider extends StatelessWidget {
  final bool small;

  const NFTDivider({
    this.small = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context).dividerThemeData;

    final Widget divider = Divider(
      height: 1,
      thickness: 0,
      color: theme.color,
    );

    if (small) {
      return Padding(
        padding: const EdgeInsets.only(left: 16),
        child: divider,
      );
    }

    return divider;
  }
}
