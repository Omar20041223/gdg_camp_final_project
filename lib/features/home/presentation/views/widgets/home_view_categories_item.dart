import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_styles.dart';
class HomeViewCategoriesItem extends StatelessWidget {
  const HomeViewCategoriesItem({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kCategoryView,extra: {
          "title" : "Clothes"
        });
      },
      child: Container(
        height: 117.5.h,
        width: 138.w,
        margin: EdgeInsets.only(right: 24.36.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.5.r),
          boxShadow: [
              BoxShadow(
               offset: const Offset(0, 3.25),
               blurRadius: 9.74,
               spreadRadius: 4.r,
               color: const Color(0xff004365).withValues(alpha: .08), // Adjusted opacity to 8%
             )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(fit: BoxFit.scaleDown,child: Image.asset("assets/images/clothes.png",width: 45.w,height: 45.h,)),
            6.verticalSpace,
            Text("Clothes",style: AppStyles.textStyle18W400Black,)
          ],
        ),
      ),
    );
  }
}
