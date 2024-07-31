import 'package:flutter/material.dart';

import '../theme/constants/colors.dart';
import '../theme/constants/typography.dart';
import '../theme/evo/constants/colors.dart';
import '../theme/theme.dart';

class NFTListItemTitle extends StatelessWidget {
  final String title;
  final Widget? leading;
  final Widget? trailing;
  final String? subtitle;
  final bool navigation;
  final bool accent;
  final VoidCallback? onTap;

  const NFTListItemTitle({
    required this.title,
    this.leading,
    this.trailing,
    this.subtitle,
    this.navigation = false,
    this.accent = false,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    final leading = this.leading;
    final subtitle = this.subtitle;
    final trailing = this.trailing;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: accent ? Colors.transparent : EVOColors.lightBackground,
          border: accent ? Border.all(color: EVOColors.mainGreen) : null,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.only(
          left: 12,
          right: 16,
          top: 15,
          bottom: 15,
        ),
        child: Row(
          children: [
            if (leading != null)
              Padding(
                padding: const EdgeInsets.only(right: 13),
                child: leading,
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: NFTTypography.body1w500.copyWith(
                      color: accent
                          ? NFTColors.white
                          : theme.colorScheme.mainTextColor),
                ),
                if (subtitle != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      subtitle,
                      style: NFTTypography.body2Normal.copyWith(
                          color: accent
                              ? NFTColors.greyB2
                              : theme.colorScheme.minorLightTextColor),
                    ),
                  ),
              ],
            ),
            const Spacer(),
            if (trailing != null) trailing,
            if (navigation) ...[
              if (trailing != null) const SizedBox(width: 8),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: EVOColors.grey5F,
                size: 24,
              ),
            ]
          ],
        ),
      ),
    );
  }
}
