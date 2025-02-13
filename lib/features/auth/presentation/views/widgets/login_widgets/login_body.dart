import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_router.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/widgets/login_widgets/login_bloc_listener.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/widgets/login_widgets/login_header.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_styles.dart';
class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            40.verticalSpace,
            const LoginHeader(),
            17.verticalSpace,
            const LoginBlocListener(),
            48.verticalSpace,
            Center(child: Text("Or Login With",style: AppStyles.textStyle14W400CustomBlack,)),
             12.5.verticalSpace,
             Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/apple_logo.png",width: 30.w,height: 30.h,),
                16.horizontalSpace,
                Image.asset("assets/images/facebook_logo.png",width: 30.w,height: 30.h,),
                16.horizontalSpace,
                Image.asset("assets/images/google_logo.png",width: 30.w,height: 30.h,),
              ],
            ),
            30.verticalSpace,
            Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Don’t have an account? ",
                      style: AppStyles.textStyle14W400CustomBlack,
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () {
                        GoRouter.of(context).push(AppRouter.kRegisterView);
                      },
                      text: "Sign up",
                      style: AppStyles.textStyle14W500PrimaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
