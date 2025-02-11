import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_colors.dart';
import 'package:gdg_camp_final_project/core/utils/app_styles.dart';
import 'package:gdg_camp_final_project/core/widgets/custom_button.dart';
import 'package:gdg_camp_final_project/features/onboarding/presentation/views/widgets/onboarding_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "SKIP",
              style: AppStyles.textStyle14W500CustomGrey,
            ),
            Icon(
              Icons.double_arrow_sharp,
              size: 12.sp,
            ),
            16.horizontalSpace,
          ],
        ),
        70.verticalSpace,
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 43.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: OnboardingPageView(
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  pageController: _pageController,
                )),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: WormEffect(
                    activeDotColor: AppColors.primaryColor,
                    dotColor: Color(0xffE8E3E3),
                    dotHeight: 9.r,
                    dotWidth: 9.r,
                  ),
                ),
                56.verticalSpace,
                currentIndex != 2
                    ? CustomButton(
                        text: "Next",
                        height: 48.h,
                        shadow: true,
                        onPressed: () {
                          _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeOut);
                        },
                      )
                    : Column(
                        children: [
                          CustomButton(
                            text: "REGISTER",
                            height: 48.h,
                            shadow: true,
                          ),
                          24.verticalSpace,
                          CustomButton(
                            text: "LOGIN",
                            height: 48.h,
                            backgroundColor: Colors.white,
                            textStyle: AppStyles.textStyle20W500White
                                .copyWith(color: AppColors.primaryColor),
                            shadow: true,
                            border: Border.all(
                                color: AppColors.primaryColor, width: 1.5),
                          ),
                        ],
                      ),
                currentIndex != 2 ? 203.verticalSpace : 131.verticalSpace,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
