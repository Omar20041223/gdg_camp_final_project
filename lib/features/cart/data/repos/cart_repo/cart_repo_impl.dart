// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import '../../../../../core/networking/api_endpoints.dart';
// import '../../../../../core/networking/api_sevice.dart';
// import '../../../../../core/networking/failures.dart';
// import '../../models/add_to_cart/add_to_cart_request_model.dart';
// import '../../models/add_to_cart/add_to_cart_response_model.dart';
// import 'cart_repo.dart';
//
// class CartRepoImpl extends CartRepo {
//   final ApiService apiService;
//
//   CartRepoImpl({required this.apiService});
//
//   @override
//   Future<Either<Failure, AddToCartResponseModel>> addToCart(
//       {required AddToCartRequestModel addToCartRequest}) async {
//     try {
//       var data = await apiService.postWithRaw(
//           endPoint: ApiEndpoints.addToCart, rawData: addToCartRequest.toJson());
//       final addToCartResponse = AddToCartResponseModel.fromJson(data);
//       return right(addToCartResponse);
//     } catch (e) {
//       if (e is DioException) {
//         return left(ServerFailure.fromDioException(e));
//       } else {
//         return left(ServerFailure(e.toString()));
//       }
//     }
//   }
// }
