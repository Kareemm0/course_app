import 'package:course_app/Core/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget? appBar(
  BuildContext context, {
  required String title,
  List<Widget>? actions,
  bool automaticallyImplyLeading = true,
  Widget? leading,
}) {
  return AppBar(
    elevation: 0,
    surfaceTintColor: Colors.white,
    automaticallyImplyLeading: automaticallyImplyLeading,
    title: Text(
      title,
      style: AppTextStyles.styleBold20(context),
    ),
    actions: actions,
    leading: leading,
    centerTitle: true,
  );
}
