import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_styles.dart';

import '../../../../../../core/utils/app_colors.dart';
class ProfileImageAndName extends StatelessWidget {
  const ProfileImageAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primaryColor,width: 4)
          ),
          child: CircleAvatar(
              radius: 70.r,
              backgroundImage: const AssetImage("assets/images/profile_image.png"),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.primaryColor,width: 1),
                    color: const Color(0xffDADADA),
                  ),
                  child:  Icon(Icons.edit,size: 15.sp,color: Colors.black,),
                ),
              )
          ),
        ),
        16.verticalSpace,
        Text("Marwa Mohamed",style: AppStyles.textStyle24W700Black,)
      ],
    );
  }
}
