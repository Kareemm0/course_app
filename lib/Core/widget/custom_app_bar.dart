import 'package:course_app/Core/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget? appBar(
  BuildContext context, {
  required String title,
  List<Widget>? actions,
  Widget? leading,
}) {
  return AppBar(
    title: Text(
      title,
      style: AppTextStyles.styleBold20(context),
    ),
    actions: actions,
    leading: leading,
    centerTitle: true,
  );
}
