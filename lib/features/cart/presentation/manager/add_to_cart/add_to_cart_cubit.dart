import 'package:bloc/bloc.dart';
import 'package:gdg_camp_final_project/features/cart/data/models/add_to_cart/add_to_cart_response_model.dart';
import 'package:gdg_camp_final_project/features/cart/data/repos/cart_repo/cart_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/add_to_cart/add_to_cart_request_model.dart';

part 'add_to_cart_state.dart';

class AddToCartCubit extends Cubit<AddToCartState> {
  AddToCartCubit(this.cartRepo) : super(AddToCartInitial());
  final CartRepo cartRepo;
  Future<void> addToCart({required AddToCartRequestModel addToCartRequest}) async {
    emit(AddToCartLoading());
    var result = await cartRepo.addToCart(addToCartRequest: addToCartRequest);
    result.fold((failure) {
      emit(AddToCartFailure(message: failure.message));
    }, (addToCarResponse) {
      emit(AddToCartSuccess(addToCartResponseModel: addToCarResponse));
    });
  }
}
