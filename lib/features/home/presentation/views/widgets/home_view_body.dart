import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          HomeViewAppBar(),
          23.5.verticalSpace,
          HomeViewCarouselSlider(),
          32.verticalSpace,
          HomeViewCategories(),
          32.verticalSpace,
          HomeViewCommonListView(title: "Offers 🔥",),
          32.verticalSpace,
          HomeViewCommonListView(title: 'Recommended',),
          32.verticalSpace,
          HomeViewCommonListView(title: 'Our products',),
          32.verticalSpace,
        ],
      ),
    );
  }
}
