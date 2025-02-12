import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/sign_up_model/sign_up_request.dart';
import '../../../data/repos/autho_repo/auth_repo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;

  Future<void> signUp({required SignUpRequest signUpRequest}) async {
    emit(SignUpLoading());
    final response = await authRepo.signUp(signUpRequest: signUpRequest);
    response.fold(
      (failure) => emit(SignUpFailure(errMessage: failure.message)),
      (signUpResponse) => emit(SignUpSuccess()),
    );
  }
}
