import 'package:flutter/widgets.dart';

class NFTTapBarItemTapNotifier extends ChangeNotifier {
  void notifyTap() => notifyListeners();
}

class NFTTapBarItemInheritedNotifier
    extends InheritedNotifier<NFTTapBarItemTapNotifier> {
  const NFTTapBarItemInheritedNotifier({
    required Widget child,
    NFTTapBarItemTapNotifier? notifier,
    Key? key,
  }) : super(
          child: child,
          notifier: notifier,
          key: key,
        );

  static NFTTapBarItemTapNotifier? of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<NFTTapBarItemInheritedNotifier>()
      ?.notifier;
}
