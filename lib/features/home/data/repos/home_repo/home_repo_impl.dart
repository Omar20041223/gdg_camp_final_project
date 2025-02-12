import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gdg_camp_final_project/core/networking/api_sevice.dart';

import 'package:gdg_camp_final_project/core/networking/failures.dart';
import 'package:gdg_camp_final_project/features/home/data/models/categories_model.dart';
import 'package:gdg_camp_final_project/features/home/data/models/products_model.dart';

import '../../../../../core/networking/api_endpoints.dart';
import 'home_repo.dart';

class HomeRepoImpl extends HomeRepo{
  ApiService apiService;
  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<CategoriesModel>>> getCategories() async{
    try {
      var data = await apiService.get(endPoint: ApiEndpoints.getCategories);
      List<CategoriesModel> categories = [];
      if (data['categories'] != null) {
        for (var item in data["categories"]) {
          categories.add(CategoriesModel.fromJson(item));
        }
      } else {
        return Left(ServerFailure("no item found "));
      }
      return right(categories);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductsModel>>> getProducts() async{
    try {
      var data = await apiService.get(endPoint: ApiEndpoints.getProducts);
      List<ProductsModel> products = [];
      if (data['products'] != null) {
        for (var item in data["products"]) {
          products.add(ProductsModel.fromJson(item));
        }
      } else {
        return Left(ServerFailure("no item found "));
      }
      return right(products);
    } on Exception catch (e) {
    if (e is DioException) {
    return left(ServerFailure.fromDioException(e));
    }
    return left(ServerFailure(e.toString()));
    }
  }

}