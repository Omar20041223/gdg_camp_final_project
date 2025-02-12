import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_styles.dart';

class SeeAllAppBar extends StatelessWidget {
  const SeeAllAppBar({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_new)),
        5.horizontalSpace,
        Text(
          title,
          style: AppStyles.textStyle18W500Black,
        ),
      ],
    );
  }
}
