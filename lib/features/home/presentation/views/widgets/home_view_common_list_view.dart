import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_styles.dart';
import 'home_view_common_item.dart';

class HomeViewCommonListView extends StatelessWidget {
  const HomeViewCommonListView({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: AppStyles.textStyle20W500Black,
              ),
              const Spacer(),
              Text("See All",style: AppStyles.textStyle16W400CustomGrey),
              24.horizontalSpace
            ],
          ),
          24.verticalSpace,
          SizedBox(
            height: 235.h,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const HomeViewCommonItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
