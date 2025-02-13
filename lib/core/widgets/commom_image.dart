import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_colors.dart';
import '../networking/api_endpoints.dart';

class CommonImage extends StatefulWidget {
  const CommonImage({super.key, required this.image, this.assetImage});

  final String image;
  final ImageProvider? assetImage;

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
        image: DecorationImage(
            image: widget.assetImage ?? NetworkImage("${ApiEndpoints.urlForImages}${widget.image}"),
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
                color:
                    isFavourite ? AppColors.customRed : AppColors.primaryColor,
                size: 15.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
