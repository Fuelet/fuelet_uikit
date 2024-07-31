import 'dart:ui';

import 'package:flutter/material.dart';

import '../theme/constants/colors.dart';
import '../theme/theme.dart';

class NFTAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const height = 56.0;

  final Widget title;
  final Widget? subtitle;
  final List<Widget>? actions;
  final bool blur;
  final bool centerTitle;

  const NFTAppBar({
    required this.title,
    this.subtitle,
    this.actions,
    this.blur = true,
    this.centerTitle = true,
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    final subtitle = this.subtitle;

    return AppBar(
      title: subtitle == null
          ? title
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                title,
                subtitle,
              ],
            ),
      backgroundColor: theme.colorScheme.backgroundColor.withOpacity(0.8),
      elevation: 0,
      toolbarHeight: height,
      centerTitle: centerTitle,
      iconTheme: const IconThemeData(
        color: NFTColors.purple,
      ),
      actions: actions,
      flexibleSpace: blur
          ? ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 60,
                  sigmaY: 60,
                ),
                child: Container(),
              ),
            )
          : null,
    );
  }
}
