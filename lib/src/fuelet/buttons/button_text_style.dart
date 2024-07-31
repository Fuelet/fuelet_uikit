import 'package:flutter/material.dart';

import '../../../fuelet_uikit.dart';
import 'button_type.dart';

TextStyle getButtonTextStyle(ButtonType type, ButtonSize size) {
  if (type == ButtonType.primary || type == ButtonType.secondary) {
    switch (size) {
      case ButtonSize.large:
        return NFTTypography.body1SemiBold;
      case ButtonSize.medium:
        return NFTTypography.body1SemiBold;
      case ButtonSize.small:
        return NFTTypography.body2SemiBold;
      case ButtonSize.xsmall:
        return NFTTypography.body2SemiBold;
      case ButtonSize.xxxsmall:
        return NFTTypography.body2SemiBold;
    }
  }

  if (type == ButtonType.red) {
    switch (size) {
      case ButtonSize.large:
        return NFTTypography.body1SemiBold;
      case ButtonSize.medium:
        return NFTTypography.body1SemiBold;
      case ButtonSize.small:
        return NFTTypography.body2SemiBold;
      case ButtonSize.xsmall:
        return NFTTypography.body3SemiBold;
      case ButtonSize.xxxsmall:
        return NFTTypography.body2SemiBold;
    }
  }

  return NFTTypography.body1SemiBold;
}
