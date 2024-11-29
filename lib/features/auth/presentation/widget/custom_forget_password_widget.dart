import 'package:flutter/material.dart';

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
      ),
    );
  }
}
