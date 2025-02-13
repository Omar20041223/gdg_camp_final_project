import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_styles.dart';
import 'package:gdg_camp_final_project/core/widgets/custom_button.dart';
import 'package:gdg_camp_final_project/features/cart/data/models/add_to_cart/add_to_cart_request_model.dart';

import '../../../manager/add_to_cart/add_to_cart_cubit.dart';
import '../../../manager/add_to_cart/add_to_cart_state.dart';
import 'cart_view_app_bar.dart';
import 'cart_view_list_view.dart';
class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key, required this.cartItems});
  final List<CartItemModel> cartItems;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        26.5.verticalSpace,
        Expanded(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 46.w),
            child: Column(
              children: [
                const CartViewAppBar(),
                57.verticalSpace,
                 CartViewListView(cartItems: cartItems,)
              ],
            ),
          ),
        ),
        108.verticalSpace,
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 25.0.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sub Total ",style: AppStyles.textStyle16W500Black,),
                    BlocBuilder<CartCubit, CartState>(
                      builder: (context, state) {
                        final double totalPrice = context.read<CartCubit>().getTotalPrice();
                        return Text(
                          "\$${totalPrice}",
                          style: AppStyles.textStyle14W700CustomRed,
                        );
                      },
                    ),
                  ],
                ),
              ),
              22.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Shipping",style: AppStyles.textStyle16W500Black,),
                    Text(
                      "Free",
                      style: AppStyles.textStyle14W700CustomRed,
                    ),
                  ],
                ),
              ),
              22.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total",style: AppStyles.textStyle16W500Black,),
                    BlocBuilder<CartCubit, CartState>(
                      builder: (context, state) {
                        final double totalPrice = context.read<CartCubit>().getTotalPrice();
                        return Text(
                          "\$${totalPrice}",
                          style: AppStyles.textStyle14W700CustomRed,
                        );
                      },
                    ),

                  ],
                ),
              ),
              50.verticalSpace,
               CustomButton(text: "Continue",onPressed: (){
                 context.read<CartCubit>().clearCart();
               },),
              100.verticalSpace
            ],
          ),
        )
      ],
    );
  }
}
