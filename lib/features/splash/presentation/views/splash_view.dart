import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/core/utils/app_router.dart';
import 'package:gdg_camp_final_project/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:gdg_camp_final_project/main.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _checkUserLoginStatus(context);
  }
  Future<void> _checkUserLoginStatus(context) async {
    bool isLoggedIn = await isUserLoggedIn();
    Future.delayed(const Duration(seconds: 3), () {
      if (isLoggedIn) {
        GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
      } else {
        GoRouter.of(context).pushReplacement(AppRouter.kOnboardingView);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
