import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/see_all_widgets/see_all_body.dart';
class SeeAllView extends StatelessWidget {
  const SeeAllView({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SeeAllBody(title: title,)),
    );
  }
}
