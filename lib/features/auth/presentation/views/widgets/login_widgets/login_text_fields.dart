import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_styles.dart';
import '../auth_text_field.dart';
class LoginTextFields extends StatelessWidget {
  const LoginTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthTextField(headerText: "Email", hintText: "Enter your email", textInputType: TextInputType.emailAddress, iconData: Icons.email),
        16.verticalSpace,
        AuthTextField(headerText: "Password", hintText: "Enter your password", textInputType: TextInputType.visiblePassword, iconData: Icons.lock, obscureText: true),
        16.verticalSpace,
        Row(
          children: [
            Checkbox(value: false, onChanged: (isTrue){}),
            Text("Remember this device",style: AppStyles.textStyle14W400CustomBlack,),
            Spacer(),
            Text("forget Password",style: AppStyles.textStyle18W400Black,)
          ],
        )
      ],
    );
  }
}
