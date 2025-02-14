import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_images.dart';
import 'package:gdg_camp_final_project/core/utils/app_styles.dart';

import '../../../../../../core/utils/app_colors.dart';
class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 40.0.h),
      child: SizedBox(
        width: double.infinity,
        height: 80.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            20.horizontalSpace,
            Container(
              height: 30.h,
              width: 25.w,
             color: Colors.white,
              child: const Image(image: AssetImage(AppImages.logoImage)),
            ),
            40.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Your account password has been changed successfully.",style: AppStyles.textStyle16W500Black,maxLines: 2,overflow: TextOverflow.ellipsis,),
                  8.verticalSpace,
                  Text("March 1, 2023",style: AppStyles.textStyle14W500CustomGrey,)
                ],
              ),
            ),
             Icon(Icons.close_outlined,color: AppColors.primaryColor,size: 30.sp,)
          ],
        ),
      ),
    );
  }
}