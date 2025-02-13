import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/features/categories/presentation/views/widgets/category_list_view.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/see_all_widgets/see_all_app_bar.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/wishlist_widgets/wishlist_list_view.dart';

import '../../../../../../core/utils/app_styles.dart';

class WishlistBody extends StatelessWidget {
  const WishlistBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0.w, right: 49.w, top: 25.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Wishlist",
            style: AppStyles.textStyle18W500Black,
          ),
          Expanded(child: WishlistListView())
        ],
      ),
    );
  }
}
