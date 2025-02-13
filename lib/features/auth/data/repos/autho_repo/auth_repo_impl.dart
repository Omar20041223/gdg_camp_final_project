import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gdg_camp_final_project/features/auth/data/models/login_model/login_response.dart';
import 'package:gdg_camp_final_project/features/auth/data/models/sign_up_model/sign_up_response.dart';
import '../../../../../core/networking/api_endpoints.dart';
import '../../../../../core/networking/api_sevice.dart';
import '../../../../../core/networking/failures.dart';
import '../../models/login_model/login_request.dart';
import '../../models/sign_up_model/sign_up_request.dart';
import 'auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final ApiService apiService;

  AuthRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, SignUpResponse>> signUp(
      {required SignUpRequest signUpRequest}) async {
    try {
      var data = await apiService.postWithRaw(endPoint: ApiEndpoints.signUp, rawData: signUpRequest.toJson());
      final signUpResponse = SignUpResponse.fromJson(data);
      return right(signUpResponse);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, LoginResponse>> login(
      {required LoginRequest loginRequest}) async {
    try {
      var data = await apiService.postWithRaw(endPoint: ApiEndpoints.login, rawData: loginRequest.toJson());
      final loginResponse = LoginResponse.fromJson(data);
      return Right(loginResponse);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }
}
