import 'package:course_app/features/onboarding/data/static/onboarding_data.dart';
import 'package:course_app/features/onboarding/presentation/view/widgets/custom_buttons_row.dart';
import 'package:course_app/features/onboarding/presentation/view/widgets/custom_dots_indecator.dart';
import 'package:course_app/features/onboarding/presentation/view/widgets/custom_visible_skip_button.dart';
import 'package:course_app/features/onboarding/presentation/view/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  PageController pageController = PageController();
  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Column(
        children: [
          CustomVisibleSkipButton(pageController: pageController),
          Expanded(
            flex: 3,
            child: PageView.builder(
              controller: pageController,
              itemCount: onboardingData.length,
              itemBuilder: (context, index) => Column(
                children: [
                  PageViewItem(
                    index: index,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDotsIndecator(
                  position: pageController.hasClients
                      ? pageController.page!.toInt()
                      : 0,
                ),
                CustomButtonsRow(pageController: pageController),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
