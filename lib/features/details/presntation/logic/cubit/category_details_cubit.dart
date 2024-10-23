import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/networking/api/dio_consumer.dart';
import '../../../../../core/networking/services/get_it_locator.dart';
import '../../../data/get_category_details_response_model/get_category_details_response_model.dart';
import '../../../data/repo/get_category_details_response_model.dart';

part 'category_details_state.dart';

class CategoryDetailsCubit extends Cubit<CategoryDetailsState> {
  CategoryDetailsCubit(this.categoriesRepoImp)
      : super(CategoryDetailsInitial());

  final CategoriesRepoImp categoriesRepoImp;

  getCategoryDetails({required num categoryId}) async {
    emit(GetCategoryDetailsLoading());
    var result = await CategoriesRepoImp(api: getIt<DioConsumer>())
        .getCategoyDetails(categoryId: categoryId);
    result.fold((l) {
      print("In CategoriesCubit in ERROR ");

      emit(GetCategoryDetailsError(error: l.toString()));
    }, (r) {
      print("In CategoriesCubit in getCategories ");
      print(r.data!.products);

      emit(
        GetCategoryDetailsSuccuss(getCategoryDetailsResponseModel: r),
      );
    });
  }
}
