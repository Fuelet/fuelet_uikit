import 'package:flutter/widgets.dart';

import '../theme/constants/typography.dart';
import '../theme/theme.dart';

class NFTSwitcher extends StatelessWidget {
  final String? title;
  final Widget? icon;
  final bool enabled;
  final bool round;
  final VoidCallback? onTap;

  const NFTSwitcher({
    required this.title,
    required this.icon,
    this.enabled = true,
    this.round = false,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    final title = this.title;

    return GestureDetector(
      onTap: enabled ? onTap : null,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        constraints: const BoxConstraints(
          minWidth: 24,
          minHeight: 24,
        ),
        decoration: BoxDecoration(
          color: theme.switcherThemeData.backgroundColor,
          borderRadius: BorderRadius.circular(24),
        ),
        padding: round
            ? null
            : const EdgeInsets.symmetric(
                vertical: 3,
                horizontal: 8,
              ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (title != null)
              Text(
                title,
                style: NFTTypography.body3Normal.copyWith(
                    color: theme.switcherThemeData.textColor
                        .withOpacity(enabled ? 1 : 0.2)),
              ),
            if (icon != null)
              Padding(
                padding: EdgeInsets.only(left: title != null ? 4 : 0),
                child: icon,
              ),
          ],
        ),
      ),
    );
  }
}
