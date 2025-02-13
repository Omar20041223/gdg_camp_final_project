part of 'login_cubit.dart';

class LoginState {}

final class LoginInitial extends LoginState {}
final class LoginLoading extends LoginState {}
final class LoginSuccess extends LoginState {
  final LoginResponse loginResponse;

  LoginSuccess({required this.loginResponse});
}
final class LoginFailure extends LoginState {
  final String errMessage;

  LoginFailure({required this.errMessage});
}
