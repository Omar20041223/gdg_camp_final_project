import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_camp_final_project/features/home/data/models/categories_model.dart';
import 'package:gdg_camp_final_project/features/home/data/repos/home_repo/home_repo.dart';

part 'get_categories_state.dart';

class GetCategoriesCubit extends Cubit<GetCategoriesState> {
  GetCategoriesCubit(this.homeRepo) : super(GetCategoriesInitial());
  final HomeRepo homeRepo;

  Future<void> getCategories() async {
    emit(GetCategoriesLoading());
    var result = await homeRepo.getCategories();
    result.fold((failure) {
      emit(GetCategoriesFailure(errMessage: failure.message));
    }, (categories) {
      emit(GetCategoriesSuccess(categories: categories));
    });
  }
}
