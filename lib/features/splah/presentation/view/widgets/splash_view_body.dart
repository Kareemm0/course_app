import 'package:course_app/Core/app/app_routing.dart';
import 'package:course_app/Core/app/routes.dart';
import 'package:course_app/Core/utils/app_images.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/utils/app_colors.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      router.pushReplacement(Routes.onboarding);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      decoration: const BoxDecoration(color: AppColors.whiteColor),
      child: Center(
        child: Image.asset(AppImages.splashImage),
      ),
    );
  }
}
