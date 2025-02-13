import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.borderRadius,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.textStyle,
    this.height,
    this.shadow = false,
    this.width,
    this.border,
  });

  final String text;
  final BorderRadius? borderRadius;
  final Function()? onPressed;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final double? height;
  final bool shadow;
  final double? width;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h,
      width: width?.w,
      child: Container(
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   colors: [Colors.brown.shade900, Colors.red.shade600], // Adjust colors as needed
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
          border: border ??
              Border.all(
                width: 1,
                color: Colors.transparent,
              ),
          borderRadius: borderRadius ?? BorderRadius.circular(10.r),
          boxShadow: shadow
              ? [
                  BoxShadow(
                    color: const Color(0x4E757040).withValues(alpha: .25), // #4E757040 (with 40 alpha)
                    offset: const Offset(0, 4), // 0px 4px
                    blurRadius: 4, // 4px
                  ),
                ]
              : [],
        ),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor ?? AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(10.r),
            ),
          ),
          child: Center(
            child: Text(
              text,
              style:
                  textStyle ?? AppStyles.textStyle20W400White,
            ),
          ),
        ),
      ),
    );
  }
}
