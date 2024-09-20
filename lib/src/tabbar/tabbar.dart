import 'dart:ui';

import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'tabbar_item_tap_notifier.dart';

class NFTTabBarPage extends StatefulWidget {
  final List<Widget> pages;
  final List<BottomNavigationBarItem> tabBarItems;
  final int currentIndex;
  final GlobalKey? navBarKey;
  final void Function(int, NFTTapBarItemTapNotifier) onItemTap;

  const NFTTabBarPage({
    required this.pages,
    required this.tabBarItems,
    required this.currentIndex,
    required this.onItemTap,
    this.navBarKey,
    super.key,
  });

  @override
  State<NFTTabBarPage> createState() => _NFTTabBarPageState();
}

class _NFTTabBarPageState extends State<NFTTabBarPage> {
  final _tapOnItemNotifier = NFTTapBarItemTapNotifier();

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.backgroundColor,
      body: NFTTapBarItemInheritedNotifier(
        notifier: _tapOnItemNotifier,
        child: IndexedStack(
          index: widget.currentIndex,
          children: widget.pages,
        ),
      ),
      bottomNavigationBar: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaY: 60,
            sigmaX: 60,
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              key: widget.navBarKey,
              onTap: (index) => widget.onItemTap(index, _tapOnItemNotifier),
              currentIndex: widget.currentIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: theme.tabBarThemeData.backgroundColor,
              items: widget.tabBarItems,
            ),
          ),
        ),
      ),
    );
  }
}
