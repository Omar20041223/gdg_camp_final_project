import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_styles.dart';
class NotificationAppBar extends StatelessWidget {
  const NotificationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notification",
          style: AppStyles.textStyle20W500Black,
        ),
        Row(
          children: [
            Icon(Icons.done_all_outlined,color: Colors.black,size: 22.sp,),
            Text("Mark all as read  ",style: AppStyles.textStyle12W400PrimaryColor,)
          ],
        )
      ],
    );
  }
}
