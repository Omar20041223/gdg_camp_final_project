import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/features/onboarding/data/models/onboarding_model.dart';
import 'package:gdg_camp_final_project/features/onboarding/presentation/views/widgets/onboarding_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.pageController, this.onPageChanged});
  final PageController pageController;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      onPageChanged: onPageChanged,
      itemBuilder: (context, index) {
        return OnboardingItem(onboardingModel: onboardingModel[index]);
      },
      itemCount: 3,
    );
  }
}
