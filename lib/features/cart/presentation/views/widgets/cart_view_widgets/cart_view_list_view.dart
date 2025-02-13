import 'package:flutter/material.dart';

import 'cart_view_item.dart';

class CartViewListView extends StatelessWidget {
  const CartViewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const CartViewItem();
      },
      itemCount: 15,
    );
  }
}
