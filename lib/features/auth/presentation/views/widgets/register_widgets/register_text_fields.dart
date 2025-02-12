import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/features/auth/data/models/sign_up_model/sign_up_request.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import '../../../../../../core/helpers/validator.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../auth_text_field.dart';

class RegisterTextFields extends StatefulWidget {
  const RegisterTextFields({super.key});

  @override
  State<RegisterTextFields> createState() => _RegisterTextFieldsState();
}

class _RegisterTextFieldsState extends State<RegisterTextFields> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  bool isPassword = true;
  bool isConfirmPassword = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    phoneController.dispose();
    nameController.dispose();
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
            headerText: "Name",
            hintText: "Enter your name",
            textInputType: TextInputType.name,
            iconData: Icons.person,
            controller: nameController,
            validator: (value) {
              return Validator.userNameValidator(value);
            },
          ),
          16.verticalSpace,
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
            obscureText: isPassword,
            suffixIcon: IconButton(onPressed: () {
              setState(() {
                isPassword =! isPassword;
              });
            }, icon: Icon(isPassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,)),
            controller: passwordController,
            validator: (value) {
              return Validator.passwordValidator(value);
            },
          ),
          16.verticalSpace,
          AuthTextField(
            headerText: "confirm Password",
            hintText: "Enter your password",
            textInputType: TextInputType.visiblePassword,
            iconData: Icons.lock,
            obscureText: isConfirmPassword,
            suffixIcon: IconButton(onPressed: () {
              setState(() {
                isConfirmPassword =! isConfirmPassword;
              });
            }, icon: Icon(isConfirmPassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,)),
            controller: confirmPasswordController,
            validator: (value) {
              return Validator.passwordConfirmValidator(
                  value, passwordController.text.trim());
            },
          ),
          16.verticalSpace,
          AuthTextField(
            headerText: "phone",
            hintText: "Enter your phone",
            textInputType: TextInputType.phone,
            iconData: Icons.phone,
            controller: phoneController,
            validator: (value) {
              return Validator.phoneNumberValidator(value);
            },
          ),
          16.verticalSpace,
          Text(
            "Must be at least 8 characters",
            style: AppStyles.textStyle14W400CustomBlack,
          ),
          32.verticalSpace,
          CustomButton(
            text: "Sign up",
            height: 55.h,
            borderRadius: BorderRadius.circular(8.r),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.read<SignUpCubit>().signUp(
                    signUpRequest: SignUpRequest(
                        confirmPassword: confirmPasswordController.text.trim(),
                        phone: phoneController.text.trim(),
                        email: emailController.text.trim(),
                        userName: nameController.text.trim(),
                        password: passwordController.text.trim(),
                        address: "1"));
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
