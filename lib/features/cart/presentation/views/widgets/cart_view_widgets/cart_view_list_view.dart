import 'package:flutter/material.dart';
import 'package:gdg_camp_final_project/features/cart/data/models/add_to_cart/add_to_cart_request_model.dart';
import 'cart_view_item.dart';

class CartViewListView extends StatelessWidget {
  const CartViewListView({super.key, required this.cartItems});
  final List<CartItemModel> cartItems;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return CartViewItem(cartItem: cartItems[index]);
        },
        itemCount: cartItems.length,
      ),
    );
  }
}
