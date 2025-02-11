import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_styles.dart';
class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Login",style: AppStyles.textStyle28W500Black,
        ),
        4.verticalSpace,
        Text(
            "Welcome ! please enter your details.",style: AppStyles.textStyle14W400CustomBlack
        ),
      ],
    );
  }
}
