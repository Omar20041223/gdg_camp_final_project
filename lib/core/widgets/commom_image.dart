import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_colors.dart';
import 'package:gdg_camp_final_project/features/home/data/models/products_model.dart';
import '../../features/home/presentation/manager/wishlist_cubit/wishlist_cubit.dart';
import '../networking/api_endpoints.dart';

class CommonImage extends StatelessWidget {
  const CommonImage({super.key, required this.image, required this.product, this.assetImage});

  final String image;
  final ImageProvider? assetImage;
  final ProductsModel product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistCubit, List<ProductsModel>>(
      builder: (context, wishlist) {
        bool isFavourite = context.read<WishlistCubit>().isInWishlist(product);

        return Container(
          width: 154.8.w,
          height: 123.84.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.5.r),
            image: DecorationImage(
              image: assetImage ?? NetworkImage("${ApiEndpoints.urlForImages}$image"),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 11.0.h, right: 10.5.w),
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  context.read<WishlistCubit>().toggleWishlist(product);
                },
                child: Container(
                  width: 22.r,
                  height: 22.r,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    isFavourite ? Icons.favorite : Icons.favorite_outline_rounded,
                    color: isFavourite ? AppColors.customRed : AppColors.primaryColor,
                    size: 15.sp,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
