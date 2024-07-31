import 'package:flutter/material.dart';

import '../theme/theme.dart';

class NFTSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const NFTSwitch({
    required this.value,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context).switchThemeData;

    return Switch.adaptive(
      value: value,
      activeColor: theme.activeColor,
      inactiveTrackColor: theme.inactiveTrackColor,
      activeTrackColor: theme.activeTrackColor,
      onChanged: onChanged,
    );
  }
}
