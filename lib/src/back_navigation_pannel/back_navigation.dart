import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../fuelet_uikit.dart';
import 'back_navigation_size.dart';
import 'circle_back_button.dart';

class BackNavigation extends StatelessWidget {
  final String title;
  final Widget? suffixTitleWidget;
  final Widget? action;
  final TextStyle? titleStyle;
  final bool disableBackBtn;

  const BackNavigation(
      {super.key,
      required this.title,
      this.suffixTitleWidget,
      this.action,
      this.titleStyle,
      this.disableBackBtn = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: BackNavigationSize.backNavigationButtonSize,
            height: BackNavigationSize.backNavigationButtonSize,
            child:
                !disableBackBtn ? const CircleBackButton() : const SizedBox()),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              suffixTitleWidget != null
                  ? Row(
                      children: [
                        SizedBox(
                            width: BackNavigationSize
                                .backNavigationSuffixTittleSize,
                            height: BackNavigationSize
                                .backNavigationSuffixTittleSize,
                            child: suffixTitleWidget!),
                        const SizedBox(
                          width: 6,
                        )
                      ],
                    )
                  : const SizedBox(),
              Flexible(
                child: Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  title,
                  style: titleStyle ??
                      NFTTypography.header5SemiBold.copyWith(
                        color: NFTTheme.of(context).colorScheme.mainTextColor,
                      ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: BackNavigationSize.backNavigationActionSize,
          height: BackNavigationSize.backNavigationActionSize,
          child: action ?? const SizedBox(),
        )
      ],
    );
  }
}
