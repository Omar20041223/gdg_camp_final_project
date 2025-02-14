import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_colors.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/profile_widgets/profile_app_bar.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/profile_widgets/profile_image_and_name.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/profile_widgets/profile_text_fields.dart';
class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key, required this.userName});
final String userName;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 143.h,
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withValues(alpha: .79),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(100.r)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 21.5.h,left: 26.w,right: 11.w,bottom: 50.h),
            child: Column(
              children: [
                const ProfileAppBar(),
                20.5.verticalSpace,
                 ProfileImageAndName(userName: userName,),
                16.verticalSpace,
                const ProfileTextFields()
              ],
            ),
          )
        ],
      ),
    );
  }
}
