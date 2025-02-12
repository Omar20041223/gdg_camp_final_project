import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_camp_final_project/features/home/presentation/manager/get_categories/get_categories_cubit.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/home_view_categories.dart';

import '../../../../../core/widgets/custom_failure_widget.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
class HomeViewCategoriesBlocBuilder extends StatelessWidget {
  const HomeViewCategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCategoriesCubit, GetCategoriesState>(
        builder: (context, state) {
          if (state is GetCategoriesSuccess) {
            return HomeViewCategories(categories: state.categories);
          } else if (state is GetCategoriesFailure) {
            return CustomFailureWidget(errMessage: state.errMessage);
          } else {
            return const CustomLoadingIndicator();
          }
        });
  }
}
