import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/widgets/commom_image.dart';
import 'package:gdg_camp_final_project/core/widgets/move_to_cart_button.dart';
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
          const CommonImage(),
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
          const MoveToCartButton(),
        ],
      ),
    );
  }
}
