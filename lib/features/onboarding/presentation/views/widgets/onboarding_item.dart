import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_styles.dart';
import 'package:gdg_camp_final_project/features/onboarding/data/models/onboarding_model.dart';
class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(onboardingModel.image,width: double.infinity,height: 428.h,fit: BoxFit.fill,),
        40.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            children: [
              Text(onboardingModel.mainText,style: AppStyles.textStyle20W600PrimaryColor,textAlign: TextAlign.center,),
              24.verticalSpace,
              Text(onboardingModel.descriptionText,style: AppStyles.textStyle16W400CustomGrey,textAlign: TextAlign.center),
            ],
          ),
        )
      ],
    );
  }
}
