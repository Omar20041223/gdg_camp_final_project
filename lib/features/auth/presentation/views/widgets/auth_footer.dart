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
              // style: AppStyles.regular14,
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
        Container(
          height: 55.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              width: 1.5,
              color: Colors.black.withAlpha(76),
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.g_mobiledata_sharp),
              4.horizontalSpace,
              // Text("Sing up with Google",style: AppStyles.regular18,)
            ],
          ),
        )
      ],
    );
  }
}
