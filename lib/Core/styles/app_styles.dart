import 'package:course_app/Core/styles/app_text_styles.dart';
import 'package:course_app/Core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../functions/out_line_input_borders.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    fontFamily: "Plus Jakarta Sans",
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: AppTextStyles.styleRegular14(context).copyWith(
        color: AppColors.grey8,
      ),
      errorBorder: outLineInputBorder(
        color: AppColors.redED,
      ),
      enabledBorder: outLineInputBorder(),
      focusedBorder: outLineInputBorder(),
      disabledBorder: outLineInputBorder(),
      focusedErrorBorder: outLineInputBorder(
        color: AppColors.redED,
      ),
      outlineBorder: const BorderSide(),
      activeIndicatorBorder: const BorderSide(),
    ),
  );
}
