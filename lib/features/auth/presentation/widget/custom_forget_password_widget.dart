import 'package:course_app/Core/app/routes.dart';
import 'package:course_app/Core/extensions/on_tab.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../Core/styles/app_text_styles.dart';
import '../../../../Core/utils/app_colors.dart';

class CustomForgetPasswordWidget extends StatelessWidget {
  const CustomForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Text(
        "ForgetPassword?",
        style: AppTextStyles.styleRegular14(context).copyWith(
          color: AppColors.yellowColor,
        ),
      ).onTap(() {
        context.push(Routes.forgetPassword);
      }),
    );
  }
}
