import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/core/utils/app_colors.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/profile_widgets/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Container(color: AppColors.primaryColor)), // Red background
          SafeArea(
            child: Container(
              color: Colors.white, // SafeArea color
              child: const ProfileBody(),
            ),
          ),
        ],
      ),
    );
  }
}
