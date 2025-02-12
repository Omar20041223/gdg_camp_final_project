import 'package:dartz/dartz.dart';
import 'package:gdg_camp_final_project/features/home/data/models/categories_model.dart';
import 'package:gdg_camp_final_project/features/home/data/models/products_model.dart';
import '../../../../../core/networking/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<CategoriesModel>>> getCategories();
  Future<Either<Failure, List<ProductsModel>>> getProducts();

}
