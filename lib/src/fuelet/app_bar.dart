import 'package:flutter/material.dart';

import '../../fuelet_uikit.dart';

class FLTAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final bool centerTitle;
  final List<Widget>? actions;
  final Widget? leading;
  final Color? backgroundColor;

  const FLTAppBar({
    required this.title,
    super.key,
    this.centerTitle = true,
    this.actions,
    this.leading,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    final iconColor = theme.isDark ? FLTColors.grey6D : FLTColors.grey9D;

    final backButton = IconButton(
      icon: Icon(Icons.arrow_back_ios_new, color: iconColor),
      onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
    );

    return AppBar(
      backgroundColor: backgroundColor ?? theme.colorScheme.backgroundColor,
      surfaceTintColor: backgroundColor ?? theme.colorScheme.backgroundColor,
      elevation: 0,
      leading: leading ?? backButton,
      title: title,
      iconTheme: IconThemeData(color: iconColor),
      centerTitle: centerTitle,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
