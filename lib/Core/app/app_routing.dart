import 'package:course_app/Core/app/routes.dart';
import 'package:course_app/features/auth/presentation/views/forget_password_screen.dart';
import 'package:course_app/features/auth/presentation/views/login_view.dart';
import 'package:course_app/features/auth/presentation/views/register_screen.dart';
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
    GoRoute(
      path: Routes.register,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: Routes.forgetPassword,
      builder: (context, state) => const ForgetPasswordScreen(),
    ),
  ],
);
