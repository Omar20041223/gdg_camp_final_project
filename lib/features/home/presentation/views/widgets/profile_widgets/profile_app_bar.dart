import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/core/utils/app_styles.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // IconButton(
        //   onPressed: () {
        //     GoRouter.of(context).pop();
        //   },
        //   icon: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
        // ),
        Text(
          "My profile",
          style: AppStyles.textStyle18W500White,
        ),
        const Spacer(),
        const Icon(Icons.edit,color: Colors.white,),
      ],
    );
  }
}
