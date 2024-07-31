import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

import '../switcher/switcher.dart';
import '../theme/constants/typography.dart';
import '../theme/theme.dart';

class NFTTooltip extends StatefulWidget {
  final String message;
  final VoidCallback? onShow;
  final VoidCallback? onDismiss;

  const NFTTooltip({
    required this.message,
    this.onShow,
    this.onDismiss,
    Key? key,
  }) : super(key: key);

  @override
  State<NFTTooltip> createState() => _NFTTooltipState();
}

class _NFTTooltipState extends State<NFTTooltip> {
  final _controller = JustTheController();
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    return JustTheTooltip(
      controller: _controller,
      onShow: () {
        setState(() => _active = true);
        widget.onShow?.call();
      },
      onDismiss: () {
        setState(() => _active = false);
        widget.onDismiss?.call();
      },
      margin: const EdgeInsets.all(16),
      showDuration: const Duration(seconds: 10),
      triggerMode: TooltipTriggerMode.tap,
      tailLength: 0,
      tailBaseWidth: 0,
      offset: 8,
      shadow: theme.tooltipThemeData.boxShadow,
      backgroundColor: theme.tooltipThemeData.backgroundColor,
      content: Material(
        color: theme.tooltipThemeData.backgroundColor,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          child: Text(
            widget.message,
            style: NFTTypography.body3Normal
                .copyWith(color: theme.colorScheme.mainTextColor),
          ),
        ),
      ),
      child: NFTTheme(
        data: theme.copyWith(
          switcherThemeData: theme.switcherThemeData.copyWith(
            backgroundColor: _active
                ? theme.tooltipThemeData.activeIconBackgroundColor
                : theme.tooltipThemeData.iconBackgroundColor,
          ),
        ),
        child: NFTSwitcher(
          title: null,
          round: true,
          icon: Icon(
            CupertinoIcons.question,
            size: 16,
            color: _active
                ? theme.tooltipThemeData.activeIconColor
                : theme.tooltipThemeData.iconColor,
          ),
          onTap: () => _controller.showTooltip(),
        ),
      ),
    );
  }
}
