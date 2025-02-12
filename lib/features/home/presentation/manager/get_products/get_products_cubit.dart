import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_camp_final_project/features/home/data/models/products_model.dart';
import 'package:gdg_camp_final_project/features/home/data/repos/home_repo/home_repo.dart';

part 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit(this.homeRepo) : super(GetProductsInitial());
  final HomeRepo homeRepo;
  Future<void> getProducts() async {
    emit(GetProductsLoading());
    var result = await homeRepo.getProducts();
    result.fold((failure) {
      emit(GetProductsFailure(errMessage: failure.message));
    }, (products) {
      emit(GetProductsSuccess(products: products));
    });
  }
}
