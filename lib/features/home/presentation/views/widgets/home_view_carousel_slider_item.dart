import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeViewCarouselSliderItem extends StatelessWidget {
  const HomeViewCarouselSliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        20.horizontalSpace,
        Container(
          height: 189.h,
          width: 375.5.w,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0x1A000000), // #0000001A in Flutter
                  offset: const Offset(0, 9.69), // x: 0px, y: 9.69px
                  blurRadius: 19.38, // 19.38px blur radius
                  spreadRadius: 0, // No spread
                ),
              ],
            borderRadius: BorderRadius.circular(11.r),
            image: DecorationImage(image: AssetImage("assets/images/advertisement.png"),fit: BoxFit.fill)
          ),
        ),
      ],
    );
  }
}
