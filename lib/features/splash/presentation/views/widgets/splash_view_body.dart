import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_colors.dart';
import 'package:gdg_camp_final_project/core/utils/app_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -50,
          right: -128.r,
          child: FadeInLeft(
            duration: Duration(seconds: 2),
            child: CircleAvatar(
              radius: 128.r,
              backgroundColor: AppColors.primaryColor.withValues(alpha: .67),
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: -21.5,
          child: ShakeX(
            from: 50,
            duration: Duration(seconds: 2),
            child: CircleAvatar(
              radius: 21.5.r,
              backgroundColor: AppColors.primaryColor.withValues(alpha: .67),
            ),
          ),
        ),
        Positioned(
          top: 200,
          left: 30,
          child: ShakeY(
            from: 50,
            duration: Duration(seconds: 2),
            child: CircleAvatar(
              radius: 29.r,
              backgroundColor: AppColors.primaryColor.withValues(alpha: .2),
            ),
          ),
        ),
        BounceInDown(
          duration: Duration(seconds: 2),
          from: 200,
          child: Center(
            child: Image.asset(
              AppImages.logoImage,
              width: 285.w,
              height: 100.h,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          bottom: -80,
          left: -160.r,
          child: FadeInRight(
            duration: Duration(seconds: 2),
            child: CircleAvatar(
              radius: 160.r,
              backgroundColor: AppColors.primaryColor.withValues(alpha: .3),
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          right: 70,
          child: BounceInDown(
            duration: Duration(seconds: 2),
            child: CircleAvatar(
              radius: 21.5.r,
              backgroundColor: AppColors.primaryColor.withValues(alpha: .67),
            ),
          ),
        ),
        Positioned(
          bottom: 120,
          right: 0,
          child: Jello(
            duration: Duration(seconds: 2),
            child: CircleAvatar(
              radius: 29.r,
              backgroundColor: AppColors.primaryColor.withValues(alpha: .2),
            ),
          ),
        ),
      ],
    );
  }
}
