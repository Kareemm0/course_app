import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../Core/constant/app_sized.dart';
import '../../../../Core/styles/app_text_styles.dart';
import '../../../../Core/utils/app_colors.dart';
import '../../../../Core/utils/app_images.dart';

class CustomSocialMediaRowWidget extends StatelessWidget {
  const CustomSocialMediaRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 4,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.blue,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                SvgPicture.asset(AppImages.facebook),
                width(8),
                Text(
                  "Sign In with Facebook",
                  style: AppTextStyles.styleRegular16(context).copyWith(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ),
        width(8),
        Flexible(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.greyDE),
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(AppImages.google),
          ),
        ),
      ],
    );
  }
}
