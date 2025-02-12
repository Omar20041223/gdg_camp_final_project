import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/see_all_widgets/see_all_app_bar.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/see_all_widgets/see_all_grid_view.dart';
class SeeAllBody extends StatelessWidget {
  const SeeAllBody({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0.w,vertical: 25.h),
      child: Column(
        children: [
          SeeAllAppBar(title: title),
          16.verticalSpace,
          const Expanded(child: SeeAllGridView())
        ],
      ),
    );
  }
}
