import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_camp_final_project/core/networking/api_sevice.dart';
import 'package:gdg_camp_final_project/features/auth/data/repos/autho_repo/auth_repo_impl.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/widgets/register_widgets/register_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BlocProvider(
        create: (context) => SignUpCubit(AuthRepoImpl(apiService: ApiService(Dio()))),
        child: const RegisterBody(),
      )),
    );
  }
}
