import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_router.dart';
import 'package:gdg_camp_final_project/core/widgets/custom_button.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/widgets/login_widgets/login_header.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/widgets/login_widgets/login_text_fields.dart';
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
            LoginHeader(),
            17.verticalSpace,
            LoginTextFields(),
            24.verticalSpace,
            CustomButton(text: "Login"),
            48.verticalSpace,
            Center(child: Text("Or Login With")),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // todo login icon
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
                      style: AppStyles.textStyle14W400CustomBlack.copyWith(color: Colors.blue),
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
