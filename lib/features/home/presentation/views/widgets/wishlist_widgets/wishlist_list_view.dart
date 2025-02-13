import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/wishlist_widgets/wishlist_item.dart';
import 'package:gdg_camp_final_project/features/onboarding/data/models/onboarding_model.dart';

import '../../../../../categories/presentation/views/widgets/category_item.dart';
class WishlistListView extends StatelessWidget {
  const WishlistListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return WishlistItem(assetImage: AssetImage("assets/images/offers_image.png"));
      },
      itemCount: 15,
      physics: const BouncingScrollPhysics(),
    );
  }
}
