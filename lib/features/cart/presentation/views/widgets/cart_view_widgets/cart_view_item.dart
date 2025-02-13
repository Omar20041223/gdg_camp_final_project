import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/networking/api_endpoints.dart';
import 'package:gdg_camp_final_project/features/cart/data/models/add_to_cart/add_to_cart_request_model.dart';

import 'cart_view_item_text.dart';

class CartViewItem extends StatelessWidget {
  const CartViewItem({super.key, required this.cartItem});
  final CartItemModel cartItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
      // Adjust padding as needed(16.w),
      margin: EdgeInsets.only(bottom: 41.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 4,
              color: const Color(0xff959595).withValues(alpha: .2))
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 171.w,
            height: 134.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              image:  DecorationImage(
                  image: NetworkImage("${ApiEndpoints.urlForImages}${cartItem.productsModel.img}"),
                  fit: BoxFit.fill),
            ),
          ),
          9.horizontalSpace,
           CartViewItemText(cartItem: cartItem,)
        ],
      ),
    );
  }
}
