import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:gdg_camp_final_project/features/home/data/models/products_model.dart';

class WishlistCubit extends Cubit<List<ProductsModel>> {
  WishlistCubit() : super([]) {
    _loadWishlist();
  }

  /// ✅ Load Wishlist from SharedPreferences
  Future<void> _loadWishlist() async {
    final prefs = await SharedPreferences.getInstance();
    final wishlistString = prefs.getString('wishlist');
    if (wishlistString != null) {
      final List<dynamic> decoded = json.decode(wishlistString);
      final List<ProductsModel> wishlist = decoded.map((e) => ProductsModel.fromJson(e)).toList();
      emit(wishlist);
    }
  }

  /// ✅ Check if a product is in the wishlist
  bool isInWishlist(ProductsModel product) {
    return state.any((p) => p.id == product.id); // Assuming `id` exists in `ProductModel`
  }

  /// ✅ Toggle wishlist (add/remove product)
  Future<void> toggleWishlist(ProductsModel product) async {
    final updatedWishlist = List<ProductsModel>.from(state);

    if (isInWishlist(product)) {
      updatedWishlist.removeWhere((p) => p.id == product.id);
    } else {
      updatedWishlist.add(product);
    }

    emit(updatedWishlist);
    await _saveWishlist(updatedWishlist);
  }

  /// ✅ Save Wishlist to SharedPreferences
  Future<void> _saveWishlist(List<ProductsModel> wishlist) async {
    final prefs = await SharedPreferences.getInstance();
    final String encoded = json.encode(wishlist.map((e) => e.toJson()).toList());
    await prefs.setString('wishlist', encoded);
  }
}
