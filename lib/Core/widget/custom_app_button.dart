import 'package:course_app/Core/styles/app_text_styles.dart';
import 'package:course_app/Core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppButton extends StatelessWidget {
  final void Function()? onPressed;
  final Color? containerColor;
  final String text;
  final Color? textColor;
  final double? width;
  final double? radius;
  final double? height;
  const CustomAppButton(
      {super.key,
      this.onPressed,
      this.containerColor,
      required this.text,
      this.textColor,
      this.width,
      this.radius,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 57,
      width: width ?? double.maxFinite,
      decoration: BoxDecoration(
          color: containerColor ?? AppColors.yellowColor,
          borderRadius: BorderRadius.circular(radius ?? 12)),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyles.styleBold20(context).copyWith(
            color: textColor ?? AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
