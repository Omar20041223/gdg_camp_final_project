import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.autoValidateMode, this.iconData, this.borderSide,
  });

  final String hintText;
  final TextInputType textInputType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final AutovalidateMode? autoValidateMode;
  final IconData? iconData;
  final BorderSide? borderSide;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autoValidateMode,
      controller: controller,
      validator: (value) {
        return validator!(value);
      },
      obscureText: obscureText,
      decoration: InputDecoration(
        // filled: true,
        // fillColor: Colors.white,
        hintText: hintText,
        hintStyle: AppStyles.textStyle14W400CustomBlack,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: borderSide ?? BorderSide(
            color: Colors.black..withAlpha(122),
            width: 1.5,
          ),
        ),
        prefixIcon: iconData != null ? Icon(iconData) : null,
        // errorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10.r),
        //   borderSide: BorderSide(
        //     width: 1.w,
        //     color: Colors.red,
        //   ),
        // ),
      ),
      keyboardType: textInputType,
      textAlign: TextAlign.start,
    );
  }
}
