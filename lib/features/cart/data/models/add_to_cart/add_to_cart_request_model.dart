import 'dart:convert';
import 'package:gdg_camp_final_project/features/home/data/models/products_model.dart';

class CartItemModel {
  final int id;
  final int userId;
  final int productId;
  final int quantity;
  final ProductsModel productsModel;

  CartItemModel({
    required this.id,
    required this.userId,
    required this.productId,
    required this.quantity,
    required this.productsModel,
  });

  /// Convert JSON to CartItemModel
  factory CartItemModel.fromJson(Map<String, dynamic> json) {
    try {
      return CartItemModel(
        id: json['id'] ?? 0,
        userId: json['userId'] ?? 0,
        productId: json['productId'] ?? 0,
        quantity: json['quantity'] ?? 1,  // Default quantity to 1
        productsModel: json['productsModel'] != null
            ? ProductsModel.fromJson(json['productsModel']) // ✅ Correct key
            : ProductsModel(
          id: 0,
          name: "Unknown",
          description: "No description",
          price: 0.0,
          categoryId: 0,
          img: "",
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ), // ✅ Prevents null issue
      );
    } catch (e) {
      print("Error parsing CartItemModel: $e");
      return CartItemModel(
        id: 0,
        userId: 0,
        productId: 0,
        quantity: 0,
        productsModel: ProductsModel(
          id: 0,
          name: "Error",
          description: "Invalid data",
          price: 0.0,
          categoryId: 0,
          img: "",
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ), // ✅ Prevents null crash
      );
    }
  }

  /// Convert CartItemModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'productId': productId,
      'quantity': quantity,
      'productsModel': productsModel.toJson(),  // ✅ Corrected key
    };
  }

  /// Encode List<CartItemModel> to JSON String
  static String encode(List<CartItemModel> cartItems) {
    return jsonEncode(cartItems.map((item) => item.toJson()).toList());
  }

  /// Decode JSON String to List<CartItemModel>
  static List<CartItemModel> decode(String jsonString) {
    return (jsonDecode(jsonString) as List<dynamic>)
        .map((item) => CartItemModel.fromJson(item))
        .toList();
  }

  /// ✅ Add copyWith method to update cart items
  CartItemModel copyWith({int? quantity, ProductsModel? productsModel}) {
    return CartItemModel(
      id: id,
      userId: userId,
      productId: productId,
      quantity: quantity ?? this.quantity,
      productsModel: productsModel ?? this.productsModel, // ✅ Preserve productsModel
    );
  }
}
