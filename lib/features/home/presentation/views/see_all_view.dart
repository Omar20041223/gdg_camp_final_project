import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/see_all_widgets/see_all_body.dart';

import '../../../../core/networking/service_locator.dart';
import '../../data/repos/home_repo/home_repo_impl.dart';
import '../manager/get_products/get_products_cubit.dart';

class SeeAllView extends StatelessWidget {
  const SeeAllView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => GetProductsCubit(getIt.get<HomeRepoImpl>())..getProducts(),
          child: SeeAllBody(
            title: title,
          ),
        ),
      ),
    );
  }
}
