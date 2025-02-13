import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_camp_final_project/core/helpers/extensions.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/widgets/login_widgets/login_text_fields.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_router.dart';
class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    String token = '';
    return BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginLoading) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
              ),
            );
          } else if (state is LoginSuccess) {
            context.pop();
            token = state.loginResponse.token;
            context.push(AppRouter.kHomeView,extra: {
              'userId' : state.loginResponse.user.id
            });
            context.showSnackBar(
               Text("Login Successfully,Welcome ${state.loginResponse.user.name}"),
            );
          } else if (state is LoginFailure) {
            context.pop();
            context.showSnackBar(Text(state.errMessage,overflow: TextOverflow.ellipsis,maxLines: 1,));
          }
        },
        child: LoginTextFields(token: token,));
  }
}
