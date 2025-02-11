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
          child: CircleAvatar(
            radius: 128.r,
            backgroundColor: AppColors.primaryColor.withValues(alpha: .67),
          ),
        ),
        Positioned(
          top: 150,
          left: -21.5,
          child: CircleAvatar(
            radius: 21.5.r,
            backgroundColor: AppColors.primaryColor.withValues(alpha: .67),
          ),
        ),
        Positioned(
          top: 200,
          left: 30,
          child: CircleAvatar(
            radius: 29.r,
            backgroundColor: AppColors.primaryColor.withValues(alpha: .2),
          ),
        ),
        Center(child: Image.asset(AppImages.logoImage,width: 285.w,height: 100.h,fit: BoxFit.fill,)),
        Positioned(
          bottom: -80,
          left: -160.r,
          child: CircleAvatar(
            radius: 160.r,
            backgroundColor: AppColors.primaryColor.withValues(alpha: .3),
          ),
        ),
        Positioned(
          bottom: 50,
          right: 70,
          child: CircleAvatar(
            radius: 21.5.r,
            backgroundColor: AppColors.primaryColor.withValues(alpha: .67),
          ),
        ),
        Positioned(
          bottom: 120,
          right: 0,
          child: CircleAvatar(
            radius: 29.r,
            backgroundColor: AppColors.primaryColor.withValues(alpha: .2),
          ),
        ),

      ],
    );
  }
}
