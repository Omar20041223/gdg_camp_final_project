import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../auth_text_field.dart';

class RegisterTextFields extends StatelessWidget {
  const RegisterTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthTextField(headerText: "Name", hintText: "Enter your name", textInputType: TextInputType.name, iconData: Icons.person),
        16.verticalSpace,
        AuthTextField(headerText: "Email", hintText: "Enter your email", textInputType: TextInputType.emailAddress, iconData: Icons.email),
        16.verticalSpace,
        AuthTextField(headerText: "Password", hintText: "Enter your password", textInputType: TextInputType.visiblePassword, iconData: Icons.lock, obscureText: true),
        16.verticalSpace,
        Text("Must be at least 8 characters",style: AppStyles.textStyle14W400CustomBlack,)
      ],
    );
  }
}
