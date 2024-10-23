import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/features/home/data/repositories/get_product_repositories.dart';

import '../../../../../../core/networking/api/dio_consumer.dart';
import '../../../../../../core/networking/services/get_it_locator.dart';
import '../../../../data/model/get_categories_response_model/get_categories_response_model.dart';

part 'categoris_state.dart';

class CategorisCubit extends Cubit<CategoriesState> {
  CategorisCubit(this.getProductRepositories) : super(CategorisInitial());
  final GetProductRepositories getProductRepositories;

  getCategories() async {
    emit(GetCategoriesLoading());
    var result =
        await GetProductRepositories(api: getIt<DioConsumer>()).getCategories();
    result.fold((l) {
      print("In CategoriesCubit in ERROR ");

      emit(GetCategoriesError(error: l.toString()));
    }, (r) {
      print("In CategoriesCubit in getCategories ");
      print(r.data!.categories);

      emit(
        GetCategoriesSuccuss(getCategoriesResponseModel: r),
      );
    });
  }
}
