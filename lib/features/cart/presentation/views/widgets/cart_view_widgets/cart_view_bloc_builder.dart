import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/features/cart/presentation/views/widgets/cart_view_widgets/cart_view_body.dart';

import '../../../../../../core/widgets/custom_failure_widget.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../manager/add_to_cart/add_to_cart_cubit.dart';
import '../../../manager/add_to_cart/add_to_cart_state.dart';
class CartViewBlocBuilder extends StatelessWidget {
  const CartViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if (state is CartLoading) {
          return SizedBox(height: 150.h, child: const CustomLoadingIndicator());
        } else if (state is CartLoaded) {
          return CartViewBody(cartItems: state.cartItems,);
        } else if (state is CartFailure) {
          return const CustomFailureWidget(errMessage: "Error loading cart");
        } else {
          return const SizedBox(); // Fallback UI
        }
      },
    );
  }
}
