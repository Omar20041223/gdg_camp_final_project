import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
class CategoryAppBar extends StatelessWidget {
  const CategoryAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            GestureDetector(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: const Icon(Icons.arrow_back_ios_new)),
            5.horizontalSpace,
            Text(
              title,style: AppStyles.textStyle18W500Black,
            ),
          ],
        ),
        13.verticalSpace,
        Row(
          children: [
            Expanded(
                child: SizedBox(
                    height: 45.h,
                    child: const CustomTextFormField(
                        hintText: "Search here",
                        textInputType: TextInputType.text,
                        iconData: Icons.search,
                        borderSide: BorderSide(color: Colors.red)))),
            17.horizontalSpace,
            Container(
              height: 45.h,
              width: 55.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.r),
                border: Border.all(color: AppColors.primaryColor),
              ),
              child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Image.asset(
                    "assets/images/filter_icon.png",
                    width: 27.w,
                    height: 27.h,
                    color: AppColors.primaryColor,
                    fit: BoxFit.scaleDown,
                  )),
            )
          ],
        ),
      ],
    );
  }
}
