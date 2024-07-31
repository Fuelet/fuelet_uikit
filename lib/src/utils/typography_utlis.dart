import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

abstract class TypographyUtils {
  static const _webLetterSpacing = 0.5;

  static TextStyle platformSensitiveTextStyle({
    required TextStyle style,
  }) {
    if (kIsWeb) {
      FontWeight fontWeight;

      switch (style.fontWeight) {
        case FontWeight.w900:
          fontWeight = FontWeight.w800;
          break;
        case FontWeight.w800:
          fontWeight = FontWeight.w700;
          break;
        case FontWeight.w700:
          fontWeight = FontWeight.w600;
          break;
        case FontWeight.w600:
          fontWeight = FontWeight.w500;
          break;
        case FontWeight.w500:
          fontWeight = FontWeight.w400;
          break;
        case FontWeight.w400:
          fontWeight = FontWeight.w300;
          break;
        case FontWeight.w300:
          fontWeight = FontWeight.w200;
          break;
        case FontWeight.w200:
          fontWeight = FontWeight.w100;
          break;
        case FontWeight.w100:
          fontWeight = FontWeight.w100;
          break;
        default:
          fontWeight = FontWeight.w300;
      }

      return style.copyWith(
        fontWeight: fontWeight,
        letterSpacing: _webLetterSpacing,
      );
    }

    return style;
  }
}
