import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/features/home/presentation/views/widgets/wishlist_widgets/wishlist_body.dart';


class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: WishlistBody()),
    );
  }
}
