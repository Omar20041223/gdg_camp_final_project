import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';
import 'custom_button.dart';

class MoveToCartButton extends StatelessWidget {
  const MoveToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: "Move to cart",
      backgroundColor: Colors.white,
      border: Border.all(color: AppColors.primaryColor, width: 1),
      textStyle: AppStyles.textStyle12W400PrimaryColor,
      borderRadius: BorderRadius.circular(20.r),
      height: 40.h,
      width: 132.w,
    );
  }
}
