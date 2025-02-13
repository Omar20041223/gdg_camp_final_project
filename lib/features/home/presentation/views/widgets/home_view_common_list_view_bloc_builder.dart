import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/features/home/presentation/manager/get_products/get_products_cubit.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/home_view_common_list_view.dart';

import '../../../../../core/widgets/custom_failure_widget.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
class HomeViewCommonListViewBlocBuilder extends StatelessWidget {
  const HomeViewCommonListViewBlocBuilder({super.key, required this.title, required this.userId});
  final String title;
  final int userId;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductsCubit, GetProductsState>(
        builder: (context, state) {
          if (state is GetProductsSuccess) {
            return HomeViewCommonListView(title: title, products: state.products, userId: userId,);
          } else if (state is GetProductsFailure) {
            return CustomFailureWidget(errMessage: state.errMessage);
          } else {
            return SizedBox(height: 270.h,child: const CustomLoadingIndicator());
          }
        });
  }
}
