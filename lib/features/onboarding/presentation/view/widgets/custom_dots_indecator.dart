import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/utils/app_colors.dart';

class CustomDotsIndecator extends StatelessWidget {
  const CustomDotsIndecator({
    super.key,
    required this.position,
  });

  final int? position;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      position: position!,
      dotsCount: 4,
      decorator: DotsDecorator(
          size: const Size(42, 7),
          activeSize: const Size(42, 7),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: AppColors.darkGrayColor,
          activeColor: AppColors.yellowColor),
    );
  }
}
