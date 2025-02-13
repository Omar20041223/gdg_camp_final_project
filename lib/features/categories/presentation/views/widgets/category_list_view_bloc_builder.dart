import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/features/categories/presentation/manager/get_products_by_category_cubit/get_products_by_category__cubit.dart';
import 'package:gdg_camp_final_project/features/categories/presentation/manager/get_products_by_category_cubit/get_products_by_category__state.dart';
import 'package:gdg_camp_final_project/features/categories/presentation/views/widgets/category_list_view.dart';

import '../../../../../core/widgets/custom_failure_widget.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';

class CategoryListViewBlocBuilder extends StatelessWidget {
  const CategoryListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductsByCategoryCubit, GetProductsByCategoryState>(
      builder: (context, state) {
        if (state is GetProductsByCategorySuccess) {
          return Expanded(
              child: CategoryListView(
            products: state.products,
          ));
        } else if (state is GetProductsByCategoryFailure) {
          return CustomFailureWidget(errMessage: state.errMessage);
        } else {
          return SizedBox(height: 150.h, child: const CustomLoadingIndicator());
        }
      },
    );
  }
}
