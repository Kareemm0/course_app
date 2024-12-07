import 'package:flutter/widgets.dart';

import '../../../../../Core/styles/app_text_styles.dart';
import '../../../data/static/onboarding_data.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 85,
        ),
        Image.asset(
          onboardingData[index].image,
          height: 200,
          width: 200,
        ),
        const SizedBox(
          height: 35,
        ),
        Text(
          onboardingData[index].title,
          style: AppTextStyles.styleBold20(context),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            onboardingData[index].subtitle,
            style: AppTextStyles.styleRegular16(context),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
