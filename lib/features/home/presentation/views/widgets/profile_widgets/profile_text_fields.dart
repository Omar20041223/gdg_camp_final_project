import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/widgets/custom_button.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/widgets/auth_text_field.dart';
class ProfileTextFields extends StatelessWidget {
  const ProfileTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AuthTextField(headerText: "First name", hintText: "First name", textInputType: TextInputType.name, iconData: Icons.person, controller: null),
        16.verticalSpace,
        const AuthTextField(headerText: "Surname", hintText: "Surname", textInputType: TextInputType.name, iconData: Icons.person, controller: null),
        16.verticalSpace,
        const AuthTextField(headerText: "Email", hintText: "Email", textInputType: TextInputType.emailAddress, iconData: Icons.email, controller: null),
        16.verticalSpace,
        const AuthTextField(headerText: "Phone", hintText: "Phone", textInputType: TextInputType.phone, iconData: Icons.phone, controller: null),
        24.verticalSpace,
        CustomButton(text: "Save",onPressed: () async{
          // final SharedPreferences prefs = await SharedPreferences.getInstance();
          // prefs.remove('auth_token');
          // GoRouter.of(context).push(AppRouter.kLoginView);
        },)
      ],
    );
  }
}
