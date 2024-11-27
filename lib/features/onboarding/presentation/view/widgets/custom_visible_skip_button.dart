import 'package:course_app/features/onboarding/presentation/view/widgets/custom_skip_button.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/app/app_routing.dart';
import '../../../../../Core/app/routes.dart';

class CustomVisibleSkipButton extends StatelessWidget {
  const CustomVisibleSkipButton({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: pageController.hasClients
          ? (pageController.page == 3 ? false : true)
          : true,
      child: CustomSkipButton(
        text: 'Skip',
        onPressed: () {
          router.pushReplacement(Routes.login);
        },
      ),
    );
  }
}
