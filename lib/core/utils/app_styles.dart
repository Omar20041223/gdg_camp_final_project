import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_colors.dart';

class AppStyles {

  /// on boarding ---------------------------
  static final TextStyle textStyle20W700PrimaryColor = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryColor,
  );
  static final TextStyle textStyle16W400CustomGrey = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.customGrey,
  );
  static final TextStyle textStyle14W500CustomGrey = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.customGrey,
  );
  static final TextStyle textStyle20W500White = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  /// --------------------------------------------






  /// auth Style
  static final TextStyle textStyle28W500Black = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static final TextStyle textStyle14W400CustomBlack = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black.withValues(alpha: .47),
  );
  static final TextStyle textStyle18W400Black = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static final TextStyle textStyle16W500CustomGrey = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Color(0xff7C838A),
  );
}
