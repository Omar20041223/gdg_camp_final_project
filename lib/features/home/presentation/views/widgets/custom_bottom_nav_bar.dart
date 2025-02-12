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
          clipper: BottomNavClipper(),
          child: Container(
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(top: Radius.circular(50.r))
            ),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                70.horizontalSpace,
                _buildNavItem(Icons.favorite_outline, 1,isSelected: selectedIndex == 1 ? true : false),
                _buildNavItem(Icons.notifications_none, 2,isSelected: selectedIndex == 2 ? true : false),
                _buildNavItem(Icons.person_outline, 3,isSelected: selectedIndex == 3 ? true : false),
              ],
            ),
          ),
        ),
        // Home Button Positioned Inside the Cutout
        Positioned(
          top: -20,
          left: 50, // Adjusted for better alignment
          child: Column(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: Colors.black,
                child: IconButton(
                  icon: Icon(Icons.home, color: selectedIndex == 0 ? AppColors.primaryColor : Colors.white, size: 30),
                  onPressed: () => onItemTapped(0),
                ),
              ),
              10.verticalSpace,
              Text("data",style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNavItem(IconData icon, int index, {bool isSelected = false}) {
    return SizedBox(
      width: 60.w, // Ensures consistent width
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => onItemTapped(index),
            child: Icon(
              icon,
              color: isSelected ? AppColors.primaryColor : Colors.white,
              size: 25.sp,
            ),
          ),
          SizedBox(height: 10.h), // Adjust spacing
          Text(
            "Label", // Replace with actual text
            style: TextStyle(color: Colors.white, fontSize: 12.sp),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class BottomNavClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double homeButtonRadius = 28.0; // Radius of the home button cutout
    double cutoutCenterX = size.width * 0.10; // X position for the home button cutout
    double curveHeight = 35.0; // Height of the curve under the home button

    // Start from the top-left corner
    path.lineTo(cutoutCenterX - 5, 0);

    // Create the first upward curve for the home button cutout
    path.quadraticBezierTo(
      cutoutCenterX - 10, curveHeight - 25, // Control point (smooth curve)
      cutoutCenterX + 20, curveHeight, // End point of the first curve
    );

    // Draw a circular arc for the home button cutout
    path.arcToPoint(
      Offset(cutoutCenterX + 60, curveHeight), // End of the arc
      radius: Radius.circular(homeButtonRadius + 10), // Arc radius
      clockwise: false, // Arc direction (counter-clockwise)
    );

    // Create the second downward curve back to the main navbar
    path.quadraticBezierTo(
      cutoutCenterX + 65, curveHeight, // Control point
      cutoutCenterX + 85, 2, // End point, back to the top
    );
    

    // Draw a straight line to the top-right corner
    path.lineTo(size.width, 0);

    // Draw a straight line down to the bottom-right corner
    path.lineTo(size.width, size.height);

    // Draw a straight line to the bottom-left corner
    path.lineTo(0, size.height);

    // Close the path to complete the shape
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
