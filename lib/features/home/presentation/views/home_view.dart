import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_camp_final_project/core/networking/api_sevice.dart';
import 'package:gdg_camp_final_project/features/home/data/repos/home_repo/home_repo.dart';
import 'package:gdg_camp_final_project/features/home/data/repos/home_repo/home_repo_impl.dart';
import 'package:gdg_camp_final_project/features/home/presentation/manager/get_categories/get_categories_cubit.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => GetCategoriesCubit(HomeRepoImpl(apiService: ApiService(Dio())))..getCategories(),
          child: const HomeViewBody(),
        ),
      ),
    );
  }
}
