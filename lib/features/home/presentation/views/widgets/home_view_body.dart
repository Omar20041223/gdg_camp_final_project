import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/home_view_categories_bloc_builder.dart';
import 'home_view_app_bar.dart';
import 'home_view_carousel_slider.dart';
import 'home_view_categories.dart';
import 'home_view_common_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
          const HomeViewCommonListView(title: "Offers 🔥",),
          32.verticalSpace,
          const HomeViewCommonListView(title: 'Recommended',),
          32.verticalSpace,
          const HomeViewCommonListView(title: 'Our products',),
          32.verticalSpace,
        ],
      ),
    );
  }
}
