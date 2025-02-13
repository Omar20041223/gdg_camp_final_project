import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_camp_final_project/features/auth/data/models/login_model/login_request.dart';
import 'package:gdg_camp_final_project/features/auth/data/models/login_model/login_response.dart';
import 'package:gdg_camp_final_project/features/auth/data/repos/autho_repo/auth_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());
  final AuthRepo authRepo;

  Future<void> login({required LoginRequest loginRequest,bool isChecked = false} ) async {
    emit(LoginLoading());
    final response = await authRepo.login(loginRequest: loginRequest);
    response.fold(
      (failure) => emit(LoginFailure(errMessage: failure.message)),
      (loginResponse) async {
        if(isChecked){
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('auth_token', loginResponse.token);
          await prefs.setInt('userId', loginResponse.user.id);
        }
        emit(LoginSuccess(loginResponse: loginResponse));
      },
    );
  }
}
