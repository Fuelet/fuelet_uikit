import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../tabbar/tabbar_item_tap_notifier.dart';
import '../theme/theme.dart';
import 'scaffold_appbar.dart';

class NFTScaffold extends StatefulWidget {
  final Widget appBarTitle;
  final List<Widget> slivers;
  final bool shrinkWrap;
  final ValueChanged<ScrollController>? onScrollOffsetChange;

  const NFTScaffold({
    required this.appBarTitle,
    required this.slivers,
    this.shrinkWrap = false,
    this.onScrollOffsetChange,
    super.key,
  });

  @override
  State<NFTScaffold> createState() => _NFTScaffoldState();
}

class _NFTScaffoldState extends State<NFTScaffold>
    with SingleTickerProviderStateMixin {
  static const _headerWidgetHeight = 126;

  var _appBarVisible = false;

  late AnimationController _appBarAnimationController;

  late ScrollController _scrollController;

  var _didAddScrollToTopListener = false;

  @override
  void initState() {
    super.initState();

    _appBarAnimationController = AnimationController(
      vsync: this,
      duration: Duration.zero,
    );

    _scrollController = ScrollController()
      ..addListener(
        () {
          final offset = _scrollController.offset;
          widget.onScrollOffsetChange?.call(_scrollController);
          if ((offset > _headerWidgetHeight / 2) || _appBarVisible) {
            _appBarAnimationController.animateTo(
                (offset - _headerWidgetHeight) / _headerWidgetHeight);
            _appBarVisible = true;

            if (offset <= 0) {
              _appBarVisible = false;
            }
          }
        },
      );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_didAddScrollToTopListener) {
      NFTTapBarItemInheritedNotifier.of(context)?.addListener(
        () =>_scrollController.hasClients ? _scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        ) : null,
      );
      _didAddScrollToTopListener = true;
    }
  }

  @override
  void dispose() {
    _appBarAnimationController.dispose();
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    return Scaffold(
      appBar: NFTScaffoldAppBar(
        animationController: _appBarAnimationController,
        title: widget.appBarTitle,
      ),
      backgroundColor: theme.colorScheme.backgroundColor,
      extendBodyBehindAppBar: true,
      body: Scrollbar(
        controller: _scrollController,
        child: ScrollConfiguration(
          behavior: const CupertinoScrollBehavior(),
          child: CustomScrollView(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: widget.slivers,
            shrinkWrap: widget.shrinkWrap,
          ),
        ),
      ),
    );
  }
}
