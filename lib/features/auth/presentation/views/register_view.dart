import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/widgets/register_widgets/register_body.dart';
class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: RegisterBody()),
    );
  }
}
