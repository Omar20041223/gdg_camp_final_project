import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_images.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    AppImages.logoImage,
                    width: 25.w,
                    height: 15.h,
                  ),
                  Text("Fastook",style: AppStyles.textStyle12W400PrimaryColor.copyWith(
                    color: Colors.black,
                    fontFamily: 'DigitalNumbers', // Use the font family defined in pubspec.yaml
                  ),),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kNotificationsView);
                    },
                    child: Icon(
                      Icons.notifications_none,
                      color: AppColors.primaryColor,
                      size: 25.sp,
                    ),
                  ),
                  10.horizontalSpace,
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kCartView);
                    },
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: AppColors.primaryColor,
                      size: 25.sp,
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: SizedBox(
                      height: 45.h,
                      child: const CustomTextFormField(
                          hintText: "Search here",
                          textInputType: TextInputType.text,
                          iconData: Icons.search,
                          borderSide: BorderSide(color: Colors.red)))),
              17.horizontalSpace,
              Container(
                height: 45.h,
                width: 55.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.r),
                  border: Border.all(color: AppColors.primaryColor),
                ),
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Image.asset(
                      "assets/images/filter_icon.png",
                      width: 27.w,
                      height: 27.h,
                      color: AppColors.primaryColor,
                      fit: BoxFit.scaleDown,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
