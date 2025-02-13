import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/features/categories/presentation/views/widgets/category_item.dart';
import 'package:gdg_camp_final_project/features/home/data/models/products_model.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key, required this.products});
  final List<ProductsModel> products;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return  CategoryItem(product: products[index],);
      },
      itemCount: products.length,
      physics: const BouncingScrollPhysics(),
    );
  }
}
