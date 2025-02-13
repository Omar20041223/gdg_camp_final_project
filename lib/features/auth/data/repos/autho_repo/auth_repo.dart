import 'package:dartz/dartz.dart';
import 'package:gdg_camp_final_project/features/auth/data/models/login_model/login_response.dart';
import 'package:gdg_camp_final_project/features/auth/data/models/sign_up_model/sign_up_response.dart';
import '../../../../../core/networking/failures.dart';
import '../../models/login_model/login_request.dart';
import '../../models/sign_up_model/sign_up_request.dart';

abstract class AuthRepo {
  Future<Either<Failure, SignUpResponse>> signUp({required SignUpRequest signUpRequest});

  Future<Either<Failure, LoginResponse>> login({required LoginRequest loginRequest});
}
