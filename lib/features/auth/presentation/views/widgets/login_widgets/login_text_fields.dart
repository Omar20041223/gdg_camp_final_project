import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/features/auth/data/models/login_model/login_request.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/manager/login_cubit/login_cubit.dart';

import '../../../../../../core/helpers/validator.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../auth_text_field.dart';

class LoginTextFields extends StatefulWidget {
  const LoginTextFields({super.key, required this.token});

  final String token;

  @override
  State<LoginTextFields> createState() => _LoginTextFieldsState();
}

class _LoginTextFieldsState extends State<LoginTextFields> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  bool obscureText = true;
  bool isChecked = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthTextField(
            headerText: "Email",
            hintText: "Enter your email",
            textInputType: TextInputType.emailAddress,
            iconData: Icons.email,
            controller: emailController,
            validator: (value) {
              return Validator.emailValidator(value);
            },
          ),
          16.verticalSpace,
          AuthTextField(
            headerText: "Password",
            hintText: "Enter your password",
            textInputType: TextInputType.visiblePassword,
            iconData: Icons.lock,
            obscureText: obscureText,
            controller: passwordController,
            validator: (value) {
              return Validator.loginPasswordValidator(value);
            },
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon: Icon(
                  obscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                )),
          ),
          16.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                  value: isChecked,
                  onChanged: (isTrue) {
                    setState(() {
                      isChecked = isTrue!;
                    });
                  }),
              Text(
                "Remember this device",
                style: AppStyles.textStyle14W400CustomBlack,
              ),
              const Spacer(),
              Text(
                "forget Password",
                style: AppStyles.textStyle14W500PrimaryColor,
              )
            ],
          ),
          24.verticalSpace,
          CustomButton(
            text: "Login",
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                context.read<LoginCubit>().login(
                    loginRequest: LoginRequest(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                    ),
                    isChecked: isChecked);
                print(widget.token);
                print(isChecked);
              } else {
                setState(() {
                  autoValidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  } 
}
