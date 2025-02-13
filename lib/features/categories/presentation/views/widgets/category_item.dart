import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_colors.dart';
import 'package:gdg_camp_final_project/core/utils/app_styles.dart';
import 'package:gdg_camp_final_project/core/widgets/commom_image.dart';
import 'package:gdg_camp_final_project/core/widgets/move_to_cart_button.dart';
import 'package:gdg_camp_final_project/features/home/data/models/products_model.dart';
class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.product});
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
          CommonImage(image: product.img,product: product,),
          27.horizontalSpace,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(product.name,style: AppStyles.textStyle16W500Black,),
              5.verticalSpace,
              Text("\$${product.price}",style: AppStyles.textStyle14W700CustomRed,),
              11.verticalSpace,
              const MoveToCartButton(),
            ],
          )
        ],
      ),
    );
  }
}
