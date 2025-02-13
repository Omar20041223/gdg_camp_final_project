import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_images.dart';
import 'package:gdg_camp_final_project/core/utils/app_styles.dart';

class SplashViewBody2 extends StatelessWidget {
  const SplashViewBody2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BounceInLeft(
          duration: const Duration(seconds: 2),
          from: 200.w,
          child: Center(
            child: Image.asset(
              AppImages.logoImage,
              width: 50.w,
              height: 50.h,
            ),
          ),
        ),
        BounceInRight(
          duration: const Duration(seconds: 2),
          from: 200.w,
          child: Text("Fastook",style: AppStyles.textStyle16W400CustomGrey.copyWith(
            color: Colors.black,
            fontFamily: 'DigitalNumbers', // Use the font family defined in pubspec.yaml
          ),),
        )
      ],
    );
  }
}
