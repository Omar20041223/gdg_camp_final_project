import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingViewBody(),
    );
  }
}
