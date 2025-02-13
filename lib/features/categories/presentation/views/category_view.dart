import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_camp_final_project/features/categories/presentation/manager/get_products_by_category_cubit/get_products_by_category__cubit.dart';
import 'package:gdg_camp_final_project/features/categories/presentation/views/widgets/category_body.dart';

import '../../../../core/networking/service_locator.dart';
import '../../../home/data/repos/home_repo/home_repo_impl.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.title, required this.categoryId});

  final String title;
  final int categoryId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BlocProvider(
        create: (context) => GetProductsByCategoryCubit(getIt.get<HomeRepoImpl>())..getProductsByCategory(categoryId),
        child: CategoryBody(title: title,),
      )),
    );
  }
}
