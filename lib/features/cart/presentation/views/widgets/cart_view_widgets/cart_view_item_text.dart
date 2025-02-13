import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_camp_final_project/core/utils/app_styles.dart';

class CartViewItemText extends StatefulWidget {
  const CartViewItemText({super.key});

  @override
  State<CartViewItemText> createState() => _CartViewItemTextState();
}

class _CartViewItemTextState extends State<CartViewItemText> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Camera Sony",
          style: AppStyles.textStyle16W500Black,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          "\$500",
          style: AppStyles.textStyle14W700CustomRed,
        ),
        Row(
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    num--;
                  });
                },
                child: Text(
                  "-",
                  style: AppStyles.textStyle14W400Black.copyWith(
                    fontSize: 25.sp
                  ),
                )),
            5.horizontalSpace,
            Text(
              "$num",
              style: AppStyles.textStyle16W500Black,
            ),
            5.horizontalSpace,
            InkWell(
              onTap: () {
                setState(() {
                  num++;
                });
              },
              child: Text(
                "+",
                style: AppStyles.textStyle14W400Black.copyWith(
                    fontSize: 25.sp
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
