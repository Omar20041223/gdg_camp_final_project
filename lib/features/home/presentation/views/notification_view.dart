import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/notification_wigets/notification_body.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(body: SafeArea(child: NotificationBody()));
  }
}