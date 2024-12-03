import 'package:course_app/Core/app/routes.dart';
import 'package:course_app/Core/extensions/on_tab.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../Core/styles/app_text_styles.dart';
import '../../../../Core/utils/app_colors.dart';

class CustomAuthText extends StatelessWidget {
  final bool isLoadgin;
  const CustomAuthText({super.key, required this.isLoadgin});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          isLoadgin ? "Don’t have an account? " : "Already have an account ? ",
          style: AppTextStyles.styleRegular14(context).copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.grey6c,
          ),
        ),
        Text(
          isLoadgin ? "Sign Up Here" : "Login Here",
          style: AppTextStyles.styleRegular14(context).copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.yellowF8,
          ),
        ).onTap(() {
          isLoadgin
              ? context.push(Routes.register)
              : context.push(Routes.login);
        })
      ],
    );
  }
}
