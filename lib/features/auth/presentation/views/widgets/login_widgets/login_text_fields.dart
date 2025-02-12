import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_styles.dart';
import '../auth_text_field.dart';

class LoginTextFields extends StatefulWidget {
  const LoginTextFields({super.key});

  @override
  State<LoginTextFields> createState() => _LoginTextFieldsState();
}

class _LoginTextFieldsState extends State<LoginTextFields> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AuthTextField(
          headerText: "Email",
          hintText: "Enter your email",
          textInputType: TextInputType.emailAddress,
          iconData: Icons.email,
          controller: null,
        ),
        16.verticalSpace,
        AuthTextField(
          headerText: "Password",
          hintText: "Enter your password",
          textInputType: TextInputType.visiblePassword,
          iconData: Icons.lock,
          obscureText: obscureText,
          controller: null,
          suffixIcon: IconButton(onPressed: () {
            setState(() {
              obscureText =! obscureText;
              print(obscureText);
            });
          }, icon: Icon(obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,)),
        ),
        16.verticalSpace,
        Row(
          children: [
            Checkbox(value: false, onChanged: (isTrue) {}),
            Text(
              "Remember this device",
              style: AppStyles.textStyle14W400CustomBlack,
            ),
            const Spacer(),
            Text(
              "forget Password",
              style: AppStyles.textStyle18W400Black,
            )
          ],
        )
      ],
    );
  }
}
