import 'package:course_app/features/onboarding/presentation/view/widgets/custom_next_button.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/app/app_routing.dart';
import '../../../../../Core/app/routes.dart';
import '../../../../../Core/utils/app_colors.dart';
import '../../../data/static/onboarding_data.dart';

class CustomButtonsRow extends StatelessWidget {
  const CustomButtonsRow({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomNextButton(
          onTap: () {
            if (pageController.hasClients) {
              pageController.previousPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
          },
          icon: Icons.arrow_back,
          backGroundColor: AppColors.grayColor,
        ),
        CustomNextButton(
          onTap: () {
            if (pageController.hasClients) {
              if (pageController.page!.toInt() == onboardingData.length - 1) {
                router.pushReplacement(Routes.login);
              } else {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              }
            }
          },
          icon: Icons.arrow_forward,
          backGroundColor: AppColors.yellowColor,
        ),
      ],
    );
  }
}
