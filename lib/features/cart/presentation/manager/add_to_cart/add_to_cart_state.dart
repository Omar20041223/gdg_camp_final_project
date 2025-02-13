part of 'add_to_cart_cubit.dart';

@immutable
sealed class AddToCartState {}

final class AddToCartInitial extends AddToCartState {}
final class AddToCartLoading extends AddToCartState {}
final class AddToCartFailure extends AddToCartState {
  final String message;

  AddToCartFailure({required this.message});
}
final class AddToCartSuccess extends AddToCartState {
  final AddToCartResponseModel addToCartResponseModel;

  AddToCartSuccess({required this.addToCartResponseModel});
}
