import 'package:gdg_camp_final_project/features/auth/presentation/views/login_view.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/register_view.dart';
import 'package:gdg_camp_final_project/features/categories/presentation/views/category_view.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/home_view.dart';
import 'package:gdg_camp_final_project/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:gdg_camp_final_project/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSplashView = '/splashView';
  static const kOnboardingView = '/onboardingView';
  static const kRegisterView = '/registerView';
  static const kLoginView = '/loginView';
  static const kHomeView = '/homeView';
  static const kCategoryView = '/categoryView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
          path: kOnboardingView,
          builder: (context, state) => const OnboardingView()),
      GoRoute(
          path: kRegisterView,
          builder: (context, state) => const RegisterView()),
      GoRoute(path: kLoginView, builder: (context, state) => const LoginView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kCategoryView,
        builder: (context, state) {
          final extraDate = state.extra as Map<String,dynamic>;
          final title =extraDate['title'] as String;
          return CategoryView(title: title,);
        },
      ),
    ],
  );
}
