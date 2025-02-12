import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: .7,
                color: Colors.black.withAlpha(178),
              ),
            ),
            16.horizontalSpace,
            Text(
              "or login with",
              style: AppStyles.textStyle14W400CustomBlack,
            ),
            16.horizontalSpace,
            Expanded(
              child: Divider(
                thickness: .7,
                color: Colors.black.withAlpha(178),
              ),
            ),
          ],
        ),
        24.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/google_logo.png",width: 30.w,height: 30.h,),
            10.horizontalSpace,
            Text("Sing up with Google",style: AppStyles.textStyle16W500CustomGrey,)
          ],
        )
      ],
    );
  }
}
