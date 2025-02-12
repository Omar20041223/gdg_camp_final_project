import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class HomeViewCommonItem extends StatelessWidget {
  const HomeViewCommonItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185.w,
      padding: EdgeInsets.all(12.w),
      margin: EdgeInsets.only(right: 16.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9.r),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 3.37),
                blurRadius: 8.08,
                color: const Color(0xff004365).withValues(alpha: .08))
          ]),
      child: Column(
        children: [
          Container(
              width: 154.8.w,
              height: 123.84.h,
              decoration: BoxDecoration(
                  color: const Color(0xff480D0D),
                  borderRadius: BorderRadius.circular(4.5.r),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/offers_image.png"),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: EdgeInsets.only(top: 11.0.h, right: 10.5.w),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 22.r,
                    height: 22.r,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Icon(
                      Icons.favorite_outline_rounded,
                      size: 15.sp,
                    ),
                  ),
                ),
              )),
          2.verticalSpace,
          Text.rich(
            TextSpan(
                text: "Product     ",
                style: AppStyles.textStyle16W500CustomGrey,
                children: [
                  TextSpan(
                      text: "\$500",
                      style: TextStyle(
                          color: const Color(0xffDB4444),
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp))
                ]),
          ),
          10.verticalSpace,
          CustomButton(text: "Move to cart",backgroundColor: Colors.white,border: Border.all(color: AppColors.primaryColor,width: 1),textStyle: AppStyles.textStyle12W400PrimaryColor,borderRadius: BorderRadius.circular(20.r),height: 40.h,width: 132.w,),
        ],
      ),
    );
  }
}
