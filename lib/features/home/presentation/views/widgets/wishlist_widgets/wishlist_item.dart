import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/features/home/data/models/products_model.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/widgets/commom_image.dart';
import '../../../../../../core/widgets/move_to_cart_button.dart';
import '../../../../../cart/data/models/add_to_cart/add_to_cart_request_model.dart';
class WishlistItem extends StatelessWidget {
  const WishlistItem({super.key, this.assetImage, required this.product});
  final ImageProvider? assetImage;
  final ProductsModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 12.h),
      margin: EdgeInsets.only(bottom: 40.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.92.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withValues(alpha: .07),
              offset: const Offset(0, 3.37),
              blurRadius: 12.6,
              spreadRadius: 8.r,
            )
          ]
      ),
      child: Row(
        children: [
           CommonImage(image: product.img,assetImage: assetImage, product: product,),
          27.horizontalSpace,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Product",style: AppStyles.textStyle16W500Black,),
              5.verticalSpace,
              Text("\$500",style: AppStyles.textStyle14W700CustomRed,),
              11.verticalSpace,
              MoveToCartButton(cartItem: CartItemModel(id: product.id, userId: 0, productId: product.id, quantity: 1, productsModel: product),),
            ],
          )
        ],
      ),
    );
  }

}
