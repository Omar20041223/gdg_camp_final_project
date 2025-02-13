

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/data/repos/home_repo/home_repo.dart';
import 'get_products_by_category__state.dart';

class GetProductsByCategoryCubit extends Cubit<GetProductsByCategoryState> {
  GetProductsByCategoryCubit(this.homeRepo) : super(GetProductsByCategoryInitial());
  final HomeRepo homeRepo;
  Future<void> getProductsByCategory(int categoryId) async {
    emit(GetProductsByCategoryLoading());

    var result = await homeRepo.getProducts();
    result.fold((failure) {
      emit(GetProductsByCategoryFailure(errMessage: failure.message));
    }, (products) {
      // Filter products by categoryId
      final filteredProducts = products.where((product) => product.categoryId == categoryId).toList();
      emit(GetProductsByCategorySuccess(products: filteredProducts));
    });
  }
}
