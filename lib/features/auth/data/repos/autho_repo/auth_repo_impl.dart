import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
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
  Future<Either<Failure, Unit>> signUp(
      {required SignUpRequest signUpRequest}) async {
    try {
      await apiService.postWithRaw(endPoint: ApiEndpoints.signUp, rawData: signUpRequest.toJson());
      return right(unit);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> login(
      {required LoginRequest loginRequest}) async {
    try {
      await apiService.postWithRaw(endPoint: ApiEndpoints.login, rawData: loginRequest.toJson());
      // final loginResponse = LoginResponse.fromJson(response['item'][0]);
      // if (loginResponse.message == "Login successful" && loginResponse.message.isNotEmpty) {
      //   await SharedPrefHelper.setData(
      //     key: SharedPrefKeys.accessToken,
      //     value: loginResponse.tokens.access,
      //   );
      //   await SharedPrefHelper.setData(
      //     key: SharedPrefKeys.refreshToken,
      //     value: loginResponse.tokens.refresh,
      //   );
      //   DioFactory.setTokenIntoHeaderAfterLogin(loginResponse.tokens.access);
      // }
      return const Right(unit);
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
