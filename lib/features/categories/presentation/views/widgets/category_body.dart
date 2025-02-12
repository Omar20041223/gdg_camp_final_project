import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/features/categories/presentation/views/widgets/category_app_bar.dart';
import 'package:gdg_camp_final_project/features/categories/presentation/views/widgets/category_list_view.dart';
class CategoryBody extends StatelessWidget {
  const CategoryBody({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0.w,vertical: 25.h),
      child: Column(
        children: [
          CategoryAppBar(title: title),
          66.5.verticalSpace,
          const Expanded(child: CategoryListView())
        ],
      ),
    );
  }
}
