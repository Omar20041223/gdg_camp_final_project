import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/cart/data/models/add_to_cart/add_to_cart_request_model.dart';
import '../../features/cart/presentation/manager/add_to_cart/add_to_cart_cubit.dart';
import '../../features/cart/presentation/manager/add_to_cart/add_to_cart_state.dart';
import '../utils/app_colors.dart';
import '../utils/app_styles.dart';
import 'custom_button.dart';

class MoveToCartButton extends StatelessWidget {
  final CartItemModel cartItem;

  const MoveToCartButton({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        bool isLoading = state is CartLoading;

        return CustomButton(
          text: isLoading ? "Adding..." : "Move to cart",
          backgroundColor: Colors.white,
          border: Border.all(color: AppColors.primaryColor, width: 1),
          textStyle: AppStyles.textStyle12W400PrimaryColor,
          borderRadius: BorderRadius.circular(20),
          height: 40,
          width: 132,
          onPressed: isLoading
              ? null
              : () {
            context.read<CartCubit>().addToCart(cartItem);
          },
        );
      },
    );
  }
}
