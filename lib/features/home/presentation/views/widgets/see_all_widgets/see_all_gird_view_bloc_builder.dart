import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/features/home/presentation/manager/get_products/get_products_cubit.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/see_all_widgets/see_all_grid_view.dart';

import '../../../../../../core/widgets/custom_failure_widget.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';

class SeeAllGirdViewBlocBuilder extends StatelessWidget {
  const SeeAllGirdViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductsCubit, GetProductsState>(
      builder: (context, state) {
        if (state is GetProductsSuccess) {
          return Expanded(child: SeeAllGridView(products: state.products,));
        } else if (state is GetProductsFailure) {
          return CustomFailureWidget(errMessage: state.errMessage);
        } else {
          return SizedBox(height: 150.h, child: const CustomLoadingIndicator());
        }
      },
    );
  }
}
