import 'package:course_app/Core/utils/app_colors.dart';
import 'package:flutter/material.dart';

InputBorder outLineInputBorder({
  Color? color,
}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      color: color ?? AppColors.greyDE,
    ),
  );
}
