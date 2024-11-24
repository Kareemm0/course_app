import 'package:course_app/Core/app/routes.dart';
import 'package:course_app/features/auth/presentation/views/login_view.dart';
import 'package:course_app/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:course_app/features/splah/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../constant/constant.dart';

final GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      path: Routes.splah,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: Routes.onboarding,
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: Routes.login,
      builder: (context, state) => const LoginView(),
    ),
  ],
);
