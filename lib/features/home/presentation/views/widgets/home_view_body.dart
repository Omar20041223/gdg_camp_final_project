import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/home_view_categories_bloc_builder.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/home_view_common_list_view_bloc_builder.dart';
import 'home_view_app_bar.dart';
import 'home_view_carousel_slider.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeViewAppBar(),
          23.5.verticalSpace,
          const HomeViewCarouselSlider(),
          32.verticalSpace,
          const HomeViewCategoriesBlocBuilder(),
          32.verticalSpace,
          HomeViewCommonListViewBlocBuilder(
            title: "Offers 🔥",
            userId: userId,
          ),
          32.verticalSpace,
          HomeViewCommonListViewBlocBuilder(
            title: "Recommended",
            userId: userId,
          ),
          32.verticalSpace,
          HomeViewCommonListViewBlocBuilder(
            title: "Our products",
            userId: userId,
          ),
          32.verticalSpace,
        ],
      ),
    );
  }
}
