import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_view_common_item.dart';

class SeeAllGridView extends StatelessWidget {
  const SeeAllGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 181 / 235,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 20.h,
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return const HomeViewCommonItem();
      },
    );
  }
}
