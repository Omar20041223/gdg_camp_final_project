import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_camp_final_project/features/home/data/repos/home_repo/home_repo_impl.dart';
import 'package:gdg_camp_final_project/features/home/presentation/manager/get_categories/get_categories_cubit.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/home_view_body.dart';

import '../../../../core/networking/service_locator.dart';
import '../manager/get_products/get_products_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => GetCategoriesCubit(getIt.get<HomeRepoImpl>())..getCategories()),
            BlocProvider(create: (context) => GetProductsCubit(getIt.get<HomeRepoImpl>())..getProducts()),
          ],
          child: const HomeViewBody(),
        ),
      ),
    );
  }
}
