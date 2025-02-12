import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonImage extends StatefulWidget {
  const CommonImage({super.key});

  @override
  State<CommonImage> createState() => _CommonImageState();
}

class _CommonImageState extends State<CommonImage> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154.8.w,
      height: 123.84.h,
      decoration: BoxDecoration(
        color: const Color(0xff480D0D),
        borderRadius: BorderRadius.circular(4.5.r),
        image: const DecorationImage(
            image: AssetImage("assets/images/offers_image.png"),
            fit: BoxFit.fill),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 11.0.h, right: 10.5.w),
        child: Align(
          alignment: Alignment.topRight,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isFavourite = !isFavourite;
              });
            },
            child: Container(
              width: 22.r,
              height: 22.r,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Icon(
                isFavourite ? Icons.favorite : Icons.favorite_outline_rounded,
                size: 15.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
