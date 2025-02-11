import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_router.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/widgets/register_widgets/register_header.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/widgets/register_widgets/register_text_fields.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../auth_footer.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            24.verticalSpace,
            const RegisterHeader(),
            24.verticalSpace,
            RegisterTextFields(),
            32.verticalSpace,
            CustomButton(
              text: "Sign up",
              height: 55.h,
              borderRadius: BorderRadius.circular(8.r),
            ),
            24.verticalSpace,
            AuthFooter(),
            16.verticalSpace,
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Already have an account? ",
                    style: AppStyles.textStyle14W400CustomBlack,
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = () {
                      GoRouter.of(context).push(AppRouter.kLoginView);
                    },
                    text: "Log in",
                    style: AppStyles.textStyle14W400CustomBlack.copyWith(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
