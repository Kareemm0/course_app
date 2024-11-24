import 'package:course_app/Core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle styleBold20(context) {
    return const TextStyle(
      color: AppColors.blackColor,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: AppColors.blackColor.withOpacity(.63),
      fontSize: 16,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle styleRegular14(context) {
    return const TextStyle(
      color: AppColors.darkGrayColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
  }
}
