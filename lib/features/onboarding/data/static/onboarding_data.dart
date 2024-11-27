import 'package:course_app/Core/utils/app_images.dart';
import 'package:course_app/features/onboarding/data/model/onboarding_model.dart';

List<OnboardingModel> onboardingData = const [
  OnboardingModel(
    image: AppImages.onboardingImage_1,
    title: 'Certification and Badges',
    subtitle: 'Earn a certificate after completion \n of every course',
  ),
  OnboardingModel(
    image: AppImages.onboardingImage_2,
    title: 'Progress Tracking',
    subtitle: 'Check your Progress of every course',
  ),
  OnboardingModel(
    image: AppImages.onboardingImage_3,
    title: 'Of f line Acc ess',
    subtitle: 'Make your course available offline',
  ),
  OnboardingModel(
    image: AppImages.onboardingImage_4,
    title: 'Course Catalog',
    subtitle: 'View in which courses you are enrolled',
  ),
];
