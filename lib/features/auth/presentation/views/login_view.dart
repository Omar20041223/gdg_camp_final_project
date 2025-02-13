import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_camp_final_project/core/networking/service_locator.dart';
import 'package:gdg_camp_final_project/features/auth/data/repos/autho_repo/auth_repo_impl.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/widgets/login_widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BlocProvider(
        create: (context) => LoginCubit(getIt.get<AuthRepoImpl>()),
        child: const LoginBody(),
      )),
    );
  }
}
