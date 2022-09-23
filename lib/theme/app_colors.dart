import 'package:flutter/material.dart';

/// [AppColors] contains all application level colors.
class AppColors {
  AppColors._();

  static const Map<String, Color> primary = <String, Color>{
    'lighter': Color(0xFFFFFFFF),
    'light': Color(0xFF666666),
    'main': Color(0xFF4d4d4d),
    'dark': Color(0xFF717171),
    'darker': Color(0xFF000000),
  };
  static const Map<String, Color> secondary = <String, Color>{
    'lighter': Color(0xFFD6E4FF),
    'light': Color(0xFFFF0066),
    'main': Color(0xFF9900FF),
    'dark': Color(0xFFe2005a),
    'darker': Color(0xFFc6004f),
  };
  static const Map<String, Color> info = <String, Color>{
    'lighter': Color(0xFF506fff),
    'light': Color(0xFF3D61FF),
    'main': Color(0xFF1E47FF),
    'dark': Color(0xFF1a3fe2),
    'darker': Color(0xFF1737c6),
  };
  static const Map<String, Color> success = <String, Color>{
    'lighter': Color(0xFF00bd07),
    'light': Color(0xFF19a31e),
    'main': Color(0xFF008A05),
    'dark': Color(0xFF008a05),
    'darker': Color(0xFF005703),
  };
  static const Map<String, Color> warning = <String, Color>{
    'lighter': Color(0xFFfd2d11),
    'light': Color(0xFFf2341b),
    'main': Color(0xFFD91B02),
    'dark': Color(0xFFce230d),
    'darker': Color(0xFFa61502),
  };
  static const Map<String, Color> error = <String, Color>{
    'lighter': Color(0xFFFFE7D9),
    'light': Color(0xFFFFA48D),
    'main': Color(0xFFFF4842),
    'dark': Color(0xFFB72136),
    'darker': Color(0xFF7A0C2E),
  };
  static const Map<String, Color> neutral = <String, Color>{
    'lighter': Color(0xFF111111),
    'light': Color(0xFF8F8F8F),
    'main': Color(0xFFdddddd),
    'dark': Color(0xFFF7F7F7),
    'darker': Color(0xFFffffff),
  };

  static const int _greyPrimaryColor = 0xFF919EAB;
  static const MaterialColor grey = MaterialColor(
    _greyPrimaryColor,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      100: Color(0xFFF9FAFB),
      200: Color(0xFFF4F6F8),
      300: Color(0xFFDFE3E8),
      400: Color(0xFFB0B0B0),
      500: Color(_greyPrimaryColor),
      600: Color(0xFF637381),
      700: Color(0xFF4F4F4F),
      800: Color(0xFF212B36),
      900: Color(0xFF161C24),
    },
  );

  static const Map<String, List<Color>> char = <String, List<Color>>{
    'violet': [
      Color(0xFF826AF9),
      Color(0xFF9E86FF),
      Color(0xFFD0AEFF),
      Color(0xFFF7D2FF)
    ],
    'blue': [
      Color(0xFF2D99FF),
      Color(0xFF83CFFF),
      Color(0xFFA5F3FF),
      Color(0xFFCCFAFF)
    ],
    'green': [
      Color(0xFF2CD9C5),
      Color(0xFF60F1C8),
      Color(0xFFA4F7CC),
      Color(0xFFC0F2DC)
    ],
    'yellow': [
      Color(0xFFFFE700),
      Color(0xFFFFEF5A),
      Color(0xFFFFF7AE),
      Color(0xFFFFF3D6)
    ],
    'red': [
      Color(0xFFFF6C40),
      Color(0xFFFF8F6D),
      Color(0xFFFFBD98),
      Color(0xFFFFF2D4)
    ],
  };
}
