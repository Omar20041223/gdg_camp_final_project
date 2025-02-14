import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_colors.dart';
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
        10.verticalSpace,
        Text(
          "\$${(double.parse(cartItem.productsModel.price.toString()) * cartItem.quantity).toStringAsFixed(2)}",
          style: AppStyles.textStyle14W700CustomRed,
        ),
        10.verticalSpace,
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
              child: Container(
                width: 25.w,
                height: 25.h,
                decoration:  BoxDecoration(
                  color: AppColors.customGrey,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Center(
                  child:Icon(Icons.remove,size: 15.sp,color: AppColors.primaryColor,),
                ),
              ),
            ),
            10.horizontalSpace,
            BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                return Text(
                  "${cartItem.quantity}", // This will now update dynamically
                  style: AppStyles.textStyle16W500Black,
                );
              },
            ),
            10.horizontalSpace,
            InkWell(
              onTap: () {
                context.read<CartCubit>().updateQuantity(cartItem.productId, cartItem.quantity + 1);
              },
              child: Container(
                width: 25.w,
                height: 25.h,
                decoration:  BoxDecoration(
                  color: AppColors.customGrey,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Center(
                  child:Icon(Icons.add,size: 15.sp,color: AppColors.primaryColor,),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
