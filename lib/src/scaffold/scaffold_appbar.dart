import 'package:flutter/widgets.dart';

import '../appbar/appbar.dart';

class NFTScaffoldAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget title;
  final AnimationController animationController;

  const NFTScaffoldAppBar({
    required this.title,
    required this.animationController,
    Key? key,
  }) : super(key: key);

  @override
  State<NFTScaffoldAppBar> createState() => _NFTScaffoldAppBarState();

  // TODO FIXME i'm a kostyl
  @override
  Size get preferredSize => const Size.fromHeight(NFTAppBar.height);
}

class _NFTScaffoldAppBarState extends State<NFTScaffoldAppBar> {
  late Animation<double> _tween;

  @override
  void initState() {
    super.initState();
    _tween = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
      parent: widget.animationController,
      curve: Curves.easeInCubic,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final appBar = NFTAppBar(title: widget.title);

    return AnimatedBuilder(
      animation: widget.animationController,
      builder: (_, __) => IgnorePointer(
        ignoring: _tween.value == 0,
        child: Opacity(
          opacity: _tween.value,
          child: appBar,
        ),
      ),
    );
  }
}
