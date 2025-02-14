import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_camp_final_project/features/auth/data/models/sign_up_model/sign_up_response.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
      (signUpResponse) async{
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('auth_token', signUpResponse.accessToken);
        await prefs.setInt('userId', signUpResponse.user.id);
        await prefs.setString('userName', signUpResponse.user.name);

        emit(SignUpSuccess(signUpResponse: signUpResponse));
      },
    );
  }
}
