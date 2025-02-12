import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/login_view.dart';
import 'package:gdg_camp_final_project/features/auth/presentation/views/register_view.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:gdg_camp_final_project/features/onboarding/presentation/views/onboarding_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  List<Widget> views = [const HomeViewBody(),const LoginView(),const RegisterView(),const OnboardingView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: views[_selectedIndex],
      ),
      bottomNavigationBar:
          CustomBottomNavBar(selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
