import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_styles.dart';
import 'package:gdg_camp_final_project/features/cart/data/models/add_to_cart/add_to_cart_request_model.dart';
import 'package:gdg_camp_final_project/features/cart/presentation/manager/add_to_cart/add_to_cart_cubit.dart';

import '../../../manager/add_to_cart/add_to_cart_state.dart';

class CartViewItemText extends StatelessWidget {
  const CartViewItemText({super.key, required this.cartItem});

  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          cartItem.productsModel.name,
          style: AppStyles.textStyle16W500Black,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          "\$${(double.parse(cartItem.productsModel.price.toString()) * cartItem.quantity).toStringAsFixed(2)}",
          style: AppStyles.textStyle14W700CustomRed,
        ),

        Row(
          children: [
            InkWell(
              onTap: () {
                if (cartItem.quantity > 1) {
                  context.read<CartCubit>().updateQuantity(cartItem.productId, cartItem.quantity - 1);
                }else if(cartItem.quantity == 1){
                  context.read<CartCubit>().removeFromCart(cartItem.productId);
                }
              },
              child: Text(
                "-",
                style: AppStyles.textStyle14W400Black.copyWith(fontSize: 25.sp),
              ),
            ),
            5.horizontalSpace,
            BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                return Text(
                  "${cartItem.quantity}", // This will now update dynamically
                  style: AppStyles.textStyle16W500Black,
                );
              },
            ),
            5.horizontalSpace,
            InkWell(
              onTap: () {
                context.read<CartCubit>().updateQuantity(cartItem.productId, cartItem.quantity + 1);
              },
              child: Text(
                "+",
                style: AppStyles.textStyle14W400Black.copyWith(fontSize: 25.sp),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
