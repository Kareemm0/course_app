import 'package:flutter/material.dart';

import '../../../../../Core/utils/app_colors.dart';

class CustomNextButton extends StatelessWidget {
  const CustomNextButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.backGroundColor,
  });
  final Function() onTap;
  final IconData icon;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: backGroundColor,
        ),
        child: Icon(
          icon,
          size: 32,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
