import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:gdg_camp_final_project/features/cart/data/models/add_to_cart/add_to_cart_request_model.dart';
import 'add_to_cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial()) {
    loadCart();
  }

  List<CartItemModel> cartItems = [];
  static const String _cartKey = 'cart';

  /// Load cart from SharedPreferences
  Future<void> loadCart() async {
    emit(CartLoading()); // ✅ Set loading state before fetching

    try {
      final prefs = await SharedPreferences.getInstance();
      final String? cartString = prefs.getString(_cartKey);

      if (cartString == null || cartString.isEmpty) {
        cartItems = [];
        emit(CartLoaded(cartItems)); // ✅ Correct initial empty state
        return;
      }

      /// Decode JSON and map to list
      List<dynamic> decodedJson = jsonDecode(cartString);
      cartItems = decodedJson.map((item) => CartItemModel.fromJson(item)).toList();

      emit(CartLoaded(cartItems));
    } catch (e) {
      print("Error loading cart: $e");
      emit(CartFailure("Failed to load cart: $e")); // ✅ Include error message
    }
  }

  /// Save cart to SharedPreferences
  Future<void> saveCart() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String jsonString = jsonEncode(cartItems.map((item) => item.toJson()).toList());
      await prefs.setString(_cartKey, jsonString);
    } catch (e) {
      print("Error saving cart: $e");
    }
  }

  /// Update quantity of a product
  Future<void> updateQuantity(int productId, int newQuantity) async {
    final index = cartItems.indexWhere((item) => item.productId == productId);
    if (index != -1) {
      cartItems[index] = cartItems[index].copyWith(quantity: newQuantity);
      await saveCart();
      updateCartState(); // Ensures UI updates, including price

    }
  }

  /// Add item to cart
  Future<void> addToCart(CartItemModel item) async {
    final index = cartItems.indexWhere((cartItem) => cartItem.productId == item.productId);

    if (index != -1) {
      cartItems[index] = cartItems[index].copyWith(quantity: cartItems[index].quantity + 1);
    } else {
      cartItems.add(item);
    }

    await saveCart();
    emit(CartLoaded(List.from(cartItems))); // ✅ Prevent duplicate emissions
  }

  /// Remove item from cart
  Future<void> removeFromCart(int productId) async {
    cartItems.removeWhere((item) => item.productId == productId);
    await saveCart();
    emit(CartLoaded(List.from(cartItems))); // ✅ Prevent duplicate emissions
  }

  /// Clear cart
  Future<void> clearCart() async {
    final prefs = await SharedPreferences.getInstance();
    cartItems.clear();
    await prefs.remove(_cartKey);
    emit(CartLoaded([])); // ✅ Explicitly send empty list
  }
  /// Calculate total price based on quantity
  double getTotalPrice() {
    return cartItems.fold(0.0, (total, item) {
      double itemPrice = double.tryParse(item.productsModel.price.toString()) ?? 0.0;
      return total + (itemPrice * item.quantity);
    });
  }


  /// Emit new state whenever price changes
  void updateCartState() {
    emit(CartLoaded(List.from(cartItems))); // Ensure UI updates
  }
}
