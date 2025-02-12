import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/features/categories/presentation/views/widgets/category_body.dart';
class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: CategoryBody(title: title,)),
    );
  }
}
