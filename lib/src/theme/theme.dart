import 'package:flutter/widgets.dart';

import 'theme_data.dart';

class NFTTheme extends InheritedWidget {
  final NFTThemeData data;

  const NFTTheme({
    required this.data,
    required Widget child,
    Key? key,
  }) : super(
          child: child,
          key: key,
        );

  static NFTThemeData of(BuildContext context) {
    final theme = context.dependOnInheritedWidgetOfExactType<NFTTheme>();

    return theme!.data;
  }

  @override
  bool updateShouldNotify(NFTTheme oldWidget) => data != oldWidget.data;
}
