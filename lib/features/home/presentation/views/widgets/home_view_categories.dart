import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/features/home/data/models/categories_model.dart';

import '../../../../../core/utils/app_styles.dart';
import 'home_view_categories_item.dart';

class HomeViewCategories extends StatelessWidget {
  const HomeViewCategories({super.key, required this.categories});
  final List<CategoriesModel> categories;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            style: AppStyles.textStyle28W500Black,
          ),
          24.verticalSpace,
          SizedBox(
            height: 117.5,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return HomeViewCategoriesItem(category: categories[index],);
              },
            ),
          ),
        ],
      ),
    );
  }
}
