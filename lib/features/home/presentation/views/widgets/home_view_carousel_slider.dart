import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_view_carousel_slider_item.dart';

class HomeViewCarouselSlider extends StatelessWidget {
  const HomeViewCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 189.h,
        viewportFraction: 1,
        autoPlay: true,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return const HomeViewCarouselSliderItem();
          },
        );
      }).toList(),
    );
  }
}
