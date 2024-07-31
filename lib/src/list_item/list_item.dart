import 'package:flutter/material.dart';

class NFTListItem extends StatelessWidget {
  final Widget? leading;
  final Widget title;
  final Widget? subtitle;
  final Widget? detailTitle;
  final Widget? detailSubtitle;
  final bool disabled;
  final bool needsTopSpacer;
  final bool small;
  final bool includeHorizontalPadding;
  final VoidCallback? onPressed;

  NFTListItem({
    required this.title,
    this.leading,
    this.subtitle,
    this.detailTitle,
    this.detailSubtitle,
    this.disabled = false,
    this.needsTopSpacer = false,
    this.small = false,
    this.includeHorizontalPadding = true,
    this.onPressed,
    Key? key,
  }) : super(key: key) {
    assert(
        (detailTitle != null && detailSubtitle == null) ||
            (detailTitle != null && detailSubtitle != null) ||
            (detailTitle == null && detailSubtitle == null),
        'detailTitle must not be null if detailSubtitle is provided');
  }

  @override
  Widget build(BuildContext context) {
    final leading = this.leading;
    final subtitle = this.subtitle;
    final detailTitle = this.detailTitle;
    final detailSubtitle = this.detailSubtitle;

    final hasSubtitle = subtitle != null || detailSubtitle != null;

    return InkWell(
      onTap: disabled ? null : onPressed,
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Padding(
        padding: includeHorizontalPadding
            ? const EdgeInsets.symmetric(horizontal: 16)
            : EdgeInsets.zero,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: small ? 48 : 56,
            maxWidth: double.infinity,
            maxHeight: small ? 48 : 80,
          ),
          child: Row(
            children: [
              if (leading != null)
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 56,
                      maxHeight: 56,
                    ),
                    child: leading,
                  ),
                ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: hasSubtitle
                        ? 18
                        : small
                            ? 0
                            : 9,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: title),
                          if (needsTopSpacer) const Spacer(),
                          if (detailTitle != null) detailTitle,
                        ],
                      ),
                      if (hasSubtitle) const Spacer(),
                      if (hasSubtitle)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (subtitle != null) subtitle,
                            const Spacer(),
                            if (detailSubtitle != null) detailSubtitle,
                          ],
                        )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
