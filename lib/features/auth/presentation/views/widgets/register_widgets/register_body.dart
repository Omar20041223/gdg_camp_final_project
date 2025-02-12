import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_router.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/widgets/register_widgets/register_bloc_listener.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/widgets/register_widgets/register_header.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_styles.dart';
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
            const RegisterBlocListener(),
            24.verticalSpace,
            const AuthFooter(),
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
                    style: AppStyles.textStyle14W500PrimaryColor,
                  ),
                ],
              ),
            ),
            50.verticalSpace,
          ],
        ),
      ),
    );
  }
}
