import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/widgets/commom_image.dart';
import '../../../../../../core/widgets/move_to_cart_button.dart';
class WishlistItem extends StatelessWidget {
  const WishlistItem({super.key, this.assetImage});
  final ImageProvider? assetImage;
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
           CommonImage(image: '',assetImage: assetImage,),
          27.horizontalSpace,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Product",style: AppStyles.textStyle16W500Black,),
              5.verticalSpace,
              Text("\$500",style: AppStyles.textStyle14W700CustomRed,),
              11.verticalSpace,
              const MoveToCartButton(),
            ],
          )
        ],
      ),
    );
  }

}
