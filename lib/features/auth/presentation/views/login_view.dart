import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/widgets/login_widgets/login_body.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: LoginBody()),
    );
  }
}
