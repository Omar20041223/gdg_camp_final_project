class AddToCartRequestModel {
  final int userId;
  final int productId;
  final int quantity;

  AddToCartRequestModel({
    required this.userId,
    required this.productId,
    required this.quantity,
  });

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId.toString(), // Convert to string if needed
      'product_id': productId.toString(), // Convert to string if needed
      'quantity': quantity.toString(), // Convert to string if needed
    };
  }
}
