import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_camp_final_project/core/widgets/custom_button.dart';
import 'package:gdg_camp_final_project/features/home/data/repos/home_repo/home_repo_impl.dart';
import 'package:gdg_camp_final_project/features/home/presentation/manager/get_categories/get_categories_cubit.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/networking/service_locator.dart';
import '../../../../core/utils/app_router.dart';
import '../manager/get_products/get_products_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
          child: Center(
        child: CustomButton(
          text: "Log out",
          width: 200,
          height: 80,
          onPressed: () async {
            final SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.remove('auth_token');
            GoRouter.of(context).push(AppRouter.kLoginView);
          },
        ),
      )),
      body: SafeArea(
        child: MultiBlocProvider(
            providers: [
              BlocProvider(
                  create: (context) =>
                      GetCategoriesCubit(getIt.get<HomeRepoImpl>())
                        ..getCategories()),
              BlocProvider(
                  create: (context) =>
                      GetProductsCubit(getIt.get<HomeRepoImpl>())
                        ..getProducts()),
            ],
            child: HomeViewBody(
              userId: userId,
            )),
      ),
    );
  }
}
