
import '../../../../home/data/models/products_model.dart';

class GetProductsByCategoryState {}

final class GetProductsByCategoryInitial extends GetProductsByCategoryState {}
final class GetProductsByCategoryLoading extends GetProductsByCategoryState {}
final class GetProductsByCategoryFailure extends GetProductsByCategoryState {
  final String errMessage;

  GetProductsByCategoryFailure({required this.errMessage});
}
final class GetProductsByCategorySuccess extends GetProductsByCategoryState {
  final List<ProductsModel> products;

  GetProductsByCategorySuccess({required this.products});

}
