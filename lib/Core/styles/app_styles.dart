import 'package:flutter/material.dart';

import '../functions/out_line_input_borders.dart';

ThemeData themeData() {
  return ThemeData(
    fontFamily: "Plus Jakarta Sans",
    inputDecorationTheme: InputDecorationTheme(
      errorBorder: outLineInputBorder(),
      enabledBorder: outLineInputBorder(),
      focusedBorder: outLineInputBorder(),
      disabledBorder: outLineInputBorder(),
      focusedErrorBorder: outLineInputBorder(),
      outlineBorder: const BorderSide(),
      activeIndicatorBorder: const BorderSide(),
    ),
  );
}
