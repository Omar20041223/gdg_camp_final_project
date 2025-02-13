class AddToCartResponseModel {
  final String message;
  final CartModel cart;

  AddToCartResponseModel({
    required this.message,
    required this.cart,
  });

  factory AddToCartResponseModel.fromJson(Map<String, dynamic> json) {
    return AddToCartResponseModel(
      message: json['message'],
      cart: CartModel.fromJson(json['cart']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'cart': cart.toJson(),
    };
  }
}

class CartModel {
  final int id;
  final int userId;
  final int productId;
  final int quantity;
  final DateTime createdAt;
  final DateTime updatedAt;

  CartModel({
    required this.id,
    required this.userId,
    required this.productId,
    required this.quantity,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      id: json['id'],
      userId: json['user_id'],
      productId: int.parse(json['product_id'].toString()), // Handling string ID
      quantity: json['quantity'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'product_id': productId,
      'quantity': quantity,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }
}
