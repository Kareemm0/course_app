import 'package:flutter/material.dart';

import '../../../../Core/constant/app_sized.dart';
import '../../../../Core/utils/app_colors.dart';

class CustomSignInDivider extends StatelessWidget {
  const CustomSignInDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
          child: Divider(
            color: AppColors.greyDE,
          ),
        ),
        width(16),
        const Text("Or Sign In With"),
        width(16),
        const Flexible(
          child: Divider(
            color: AppColors.greyDE,
          ),
        ),
      ],
    );
  }
}
