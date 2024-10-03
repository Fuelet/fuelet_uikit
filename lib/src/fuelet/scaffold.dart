import 'package:flutter/material.dart';

import '../../fuelet_uikit.dart';

/// [FLTScaffold] wraps [Scaffold] with unfocusing when tapping somewhere
class FLTScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? bottomSheet;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation floatingActionButtonLocation;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  final bool addSafeArea;
  final bool extendBodyBehindAppBar;
  final bool unfocusOnTap;
  final bool? resizeToAvoidBottomInset;

  const FLTScaffold({
    this.appBar,
    required this.body,
    this.bottomSheet,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation = FloatingActionButtonLocation.endFloat,
    this.backgroundColor,
    this.onTap,
    this.addSafeArea = false,
    this.extendBodyBehindAppBar = false,
    this.unfocusOnTap = true,
    this.resizeToAvoidBottomInset,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = NFTTheme.of(context);
    return GestureDetector(
      onTap: () {
        if (unfocusOnTap) {
          FocusScope.of(context).requestFocus(FocusNode());
        }
        if (onTap != null) {
          onTap!();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        appBar: appBar,
        backgroundColor:
            backgroundColor ?? themeData.colorScheme.backgroundColor,
        body: addSafeArea ? SafeArea(child: body) : body,
        bottomSheet: bottomSheet,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        extendBodyBehindAppBar: extendBodyBehindAppBar,
      ),
    );
  }
}
