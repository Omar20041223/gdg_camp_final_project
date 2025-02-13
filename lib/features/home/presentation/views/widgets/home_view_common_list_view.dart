import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_router.dart';
import 'package:gdg_camp_final_project/features/home/data/models/products_model.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_styles.dart';
import 'home_view_common_item.dart';

class HomeViewCommonListView extends StatelessWidget {
  const HomeViewCommonListView({super.key, required this.title, required this.products, required this.userId});

  final String title;
  final List<ProductsModel> products;
  final int userId;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: AppStyles.textStyle20W500Black,
              ),
              const Spacer(),
              GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kSeeAllView,extra: {
                      "title" : title
                    });
                  },
                  child: Text("See All",
                      style: AppStyles.textStyle16W400CustomGrey)),
              24.horizontalSpace,
            ],
          ),
          24.verticalSpace,
          SizedBox(
            height: 235.h,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return  HomeViewCommonItem(product: products[index], userId: userId,);
              },
            ),
          ),
        ],
      ),
    );
  }
}
