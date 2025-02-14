import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/notification_wigets/notification_app_bar.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/notification_wigets/notification_list_view.dart';
class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Column(
        children: [
          40.verticalSpace,
          const NotificationAppBar(),
          30.verticalSpace,
          const Expanded(child: NotificationListView()),
        ]
      ),
    );
  }
}
