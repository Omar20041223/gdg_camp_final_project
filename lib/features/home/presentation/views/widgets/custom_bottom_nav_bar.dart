import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipPath(
          clipper: BottomNavClipper(selectedIndex),
          child: Container(
            // margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(top: Radius.circular(5.r)),
            ),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(Icons.home, 0,"Home", isSelected: selectedIndex == 0),
                _buildNavItem(Icons.favorite_outline, 1,"Wishlist", isSelected: selectedIndex == 1),
                _buildNavItem(Icons.notifications_none, 2,"Notifications", isSelected: selectedIndex == 2),
                _buildNavItem(Icons.person_outline, 3,"Profile", isSelected: selectedIndex == 3),
              ],
            ),
          ),
        ),
        Positioned(
          top: -25.h,
          left: _getHomeButtonPosition(selectedIndex),
          child: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.black,
            child: IconButton(
              icon: Icon(
                _getIconForIndex(selectedIndex),
                color: Colors.white,
                size: 30,
              ),
              onPressed: () => onItemTapped(selectedIndex),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNavItem(IconData icon, int index,String label, {bool isSelected = false}) {
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? AppColors.primaryColor : Colors.white, size: 25.sp),
          SizedBox(height: 5.h),
          Text(label, style: TextStyle(color: Colors.white, fontSize: 12.sp)),
        ],
      ),
    );
  }

  double _getHomeButtonPosition(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return 20.w;
      case 1:
        return 120.w;
      case 2:
        return 235.w;
      case 3:
        return 350.w;
      default:
        return 30.w;
    }
  }

  IconData _getIconForIndex(int index) {
    switch (index) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.favorite;
      case 2:
        return Icons.notifications;
      case 3:
        return Icons.person;
      default:
        return Icons.home;
    }
  }
}


class BottomNavClipper extends CustomClipper<Path> {
  final int selectedIndex;

  BottomNavClipper(this.selectedIndex);

  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double arcRadius = 40.0.r;
    double circleRadius = 28.0.r;
    double cutoutCenterX = _getCutoutPosition(width, selectedIndex);

    path.lineTo(cutoutCenterX - arcRadius * 1.7, 0);

    // Start of the cutout
    path.quadraticBezierTo(
      cutoutCenterX - arcRadius, arcRadius - 10,
      cutoutCenterX - 10, arcRadius,
    );

    // Arc for the floating button
    path.arcToPoint(
      Offset(cutoutCenterX + 10, arcRadius),
      radius: Radius.circular(circleRadius),
      clockwise: false,
    );

    // End of the cutout
    path.quadraticBezierTo(
      cutoutCenterX + arcRadius, arcRadius - 10,
      cutoutCenterX + arcRadius * 1.7, 0,
    );

    path.lineTo(width, 0);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.close();

    return path;
  }

  double _getCutoutPosition(double width, int index) {
    double sectionWidth = width / 4; // Divide equally for 4 icons
    if(index == 1){
      return (sectionWidth * index) + (sectionWidth / 2) - 10;
    }else if (index == 3){
      return (sectionWidth * index) + (sectionWidth / 2) + 4;
    }else{
      return (sectionWidth * index) + (sectionWidth / 2) - 4;
    }
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
