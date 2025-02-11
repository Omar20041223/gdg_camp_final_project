import 'package:gdg_camp_final_project/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:gdg_camp_final_project/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';


abstract class AppRouter {
  static const kSplashView = '/splashView';
  static const kOnboardingView = '/onboardingView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: '/onboardingView', builder: (context, state) => const OnboardingView()),
    ],
  );
}
