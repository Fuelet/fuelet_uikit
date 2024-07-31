import 'package:flutter/material.dart';

import '../divider/divider.dart';
import '../theme/constants/typography.dart';
import '../theme/theme.dart';

class NFTListSection extends StatelessWidget {
  final String? title;
  final List<Widget> children;
  final EdgeInsets? padding;
  final Set<int> smallPaddingsIndices;

  const NFTListSection({
    this.title,
    required this.children,
    this.padding,
    this.smallPaddingsIndices = const <int>{},
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    final title = this.title;
    final padding = this.padding;

    final section = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              bottom: 8,
            ),
            child: Text(
              title,
              style: NFTTypography.body3Normal
                  .copyWith(color: theme.colorScheme.minorLightTextColor),
            ),
          ),
        Container(
          decoration: BoxDecoration(
            color: theme.listSectionThemeData.backgroundColor,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Column(
            children: [
              for (var i = 0; i < children.length; i++) ...[
                if (i > 0)
                  NFTDivider(
                    small: smallPaddingsIndices.contains(i),
                  ),
                children[i],
              ],
            ],
          ),
        ),
      ],
    );

    if (padding != null) {
      return Padding(
        padding: padding,
        child: section,
      );
    }

    return section;
  }
}
