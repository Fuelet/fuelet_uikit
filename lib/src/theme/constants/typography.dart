import 'package:flutter/rendering.dart';

import '../../utils/typography_utlis.dart';

abstract class NFTTypography {
  const NFTTypography._();

  // Font Families
  static const fontFamilySFUIDisplay = 'Inter';
  static const _defaultLetterSpacing = -0.5;

  // title3
  static final title3Normal = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 36,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w400,
      letterSpacing: _defaultLetterSpacing,
    ),
  );

  static final title3SemiBold = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 36,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w600,
      letterSpacing: _defaultLetterSpacing,
    ),
  );

  // title2
  static final title2Normal = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 40,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w400,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final title2SemiBold = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 40,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w600,
      letterSpacing: _defaultLetterSpacing,
    ),
  );

  // header1
  static final header1Normal = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 48,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w400,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final header1SemiBold = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 48,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w600,
      letterSpacing: _defaultLetterSpacing,
    ),
  );

  // header2
  static final header2Normal = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 32,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w400,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final header2SemiBold = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 32,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w600,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final header2Bold = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 32,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w700,
      letterSpacing: _defaultLetterSpacing,
    ),
  );

  // header 3.5
  static final header3_5Normal = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 28,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w400,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final header3_5w500 = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 29,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w500,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final header3_5SemiBold = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 28,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w600,
      letterSpacing: _defaultLetterSpacing,
    ),
  );

  // header3
  static final header3Normal = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 27,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w400,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final header3SemiBold = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 27,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w600,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  // header4
  static final header4Normal = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 24,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w400,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final header4w500 = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 24,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w500,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final header4SemiBold = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 24,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w600,
      letterSpacing: _defaultLetterSpacing,
    ),
  );

  // header5
  static final header5Normal = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 21,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w400,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final header5SemiBold = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 21,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w600,
      letterSpacing: _defaultLetterSpacing,
    ),
  );

  // header6
  static final header6Normal = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 19,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w400,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final header6w500 = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 19,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w500,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final header6SemiBold = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 19,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w600,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final header6Bold = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 19,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w700,
      letterSpacing: _defaultLetterSpacing,
    ),
  );

  // body1
  static final body1Normal = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 17,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w400,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final body1w500 = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 17,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w500,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final body1SemiBold = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 17,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w600,
      letterSpacing: _defaultLetterSpacing,
    ),
  );

  // body2
  static final body2Normal = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 15,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w400,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final body2Medium = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 15,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w500,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final body2SemiBold = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 15,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w600,
      letterSpacing: _defaultLetterSpacing,
    ),
  ); // body3
  static final body3Normal = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 13,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w400,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final body3Medium = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 13,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w500,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final body3SemiBold = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 13,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w600,
      letterSpacing: _defaultLetterSpacing,
    ),
  );

  // body4
  static final body4Normal = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 12,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w400,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
  static final body4SemiBold = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 12,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w600,
      letterSpacing: _defaultLetterSpacing,
    ),
  );

  // body5
  static final body5Normal = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 11,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w400,
      letterSpacing: _defaultLetterSpacing,
    ),
  );

  static final body5Medium = TypographyUtils.platformSensitiveTextStyle(
    style: const TextStyle(
      fontSize: 11,
      fontFamily: fontFamilySFUIDisplay,
      fontWeight: FontWeight.w500,
      letterSpacing: _defaultLetterSpacing,
    ),
  );
}
