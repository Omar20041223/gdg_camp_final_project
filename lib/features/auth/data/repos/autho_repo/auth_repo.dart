import 'package:dartz/dartz.dart';
import '../../../../../core/networking/failures.dart';
import '../../models/login_model/login_request.dart';
import '../../models/sign_up_model/sign_up_request.dart';

abstract class AuthRepo {
  Future<Either<Failure, Unit>> signUp({required SignUpRequest signUpRequest});

  Future<Either<Failure, Unit>> login({required LoginRequest loginRequest});
}
