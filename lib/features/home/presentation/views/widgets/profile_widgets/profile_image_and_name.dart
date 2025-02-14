import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:gdg_camp_final_project/core/utils/app_styles.dart';
import '../../../../../../core/utils/app_colors.dart';

class ProfileImageAndName extends StatefulWidget {
  const ProfileImageAndName({super.key, required this.userName});

  final String userName;

  @override
  State<ProfileImageAndName> createState() => _ProfileImageAndNameState();
}

class _ProfileImageAndNameState extends State<ProfileImageAndName> {
  File? _imageFile;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.primaryColor, width: 4),
          ),
          child: Stack(
            children: [
              CircleAvatar(
                radius: 70.r,
                backgroundImage: _imageFile != null
                    ? FileImage(_imageFile!) as ImageProvider
                    : const AssetImage("assets/images/profile_image.png"),
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: GestureDetector(
                  onTap: _pickImage,
                  child: Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.primaryColor, width: 1),
                      color: const Color(0xffDADADA),
                    ),
                    child: Icon(Icons.edit, size: 15.sp, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        16.verticalSpace,
        Text(widget.userName, style: AppStyles.textStyle24W700Black),
      ],
    );
  }
}
