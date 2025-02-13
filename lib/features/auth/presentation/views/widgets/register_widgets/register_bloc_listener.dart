import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_camp_final_project/core/helpers/extensions.dart';
import 'package:gdg_camp_final_project/core/utils/app_router.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/widgets/register_widgets/register_text_fields.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_colors.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state is SignUpLoading) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
              ),
            );
          } else if (state is SignUpSuccess) {
            context.pop();
            context.push(AppRouter.kHomeView,extra: {
              'userId' : state.signUpResponse.user.id
            });
            context.showSnackBar(
               Text("Signed up Successfully,Welcome ${state.signUpResponse.user.name}"),
            );
          } else if (state is SignUpFailure) {
            context.pop();
            context.showSnackBar(Text(state.errMessage,overflow: TextOverflow.ellipsis,maxLines: 1,));
          }
        },
        child: const RegisterTextFields());
  }
}
