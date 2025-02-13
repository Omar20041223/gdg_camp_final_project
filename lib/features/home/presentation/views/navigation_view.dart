import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/home_view.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/notification_view.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/profile_view.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/wishlist_view.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  List<Widget> views = [const HomeView(),const WishlistView(),const NotificationView(),const ProfileView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
