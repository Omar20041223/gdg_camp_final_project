import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/features/categories/presentation/views/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const CategoryItem();
      },
      itemCount: 15,
      physics: const BouncingScrollPhysics(),
    );
  }
}
