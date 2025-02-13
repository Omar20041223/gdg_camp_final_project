import '../../../data/models/add_to_cart/add_to_cart_request_model.dart';

abstract class CartState {}

class CartInitial extends CartState {}

class CartLoading extends CartState {}

class CartFailure extends CartState {
  final String errorMessage;
  CartFailure(this.errorMessage);
}

class CartLoaded extends CartState {
  final List<CartItemModel> cartItems;
  CartLoaded(this.cartItems);
}
