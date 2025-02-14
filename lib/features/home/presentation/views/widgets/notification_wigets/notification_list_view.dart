import 'package:flutter/material.dart';

import 'notification_item.dart';
class NotificationListView extends StatelessWidget {
  const NotificationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const NotificationItem();
      },
      itemCount: 3,
      physics: const BouncingScrollPhysics(),
    );
  }
}
