import 'package:dartz/dartz.dart';
import 'package:online_store/features/details/data/get_category_details_response_model/get_category_details_response_model.dart';

import '../../../../core/networking/api/api_consumer.dart';
import '../../../../core/networking/api/end_points.dart';

class CategoriesRepoImp {
  final ApiConsumer api;

  CategoriesRepoImp({required this.api});

  Future<Either<String, GetCategoryDetailsResponseModel>> getCategoyDetails(
      {required num categoryId}) async {
    try {
      Map<String, dynamic> jsonData =
          await api.get('${EndPoints.categories}/$categoryId');

      GetCategoryDetailsResponseModel getCategoriesResponseModel =
          GetCategoryDetailsResponseModel.fromJson(jsonData);
      return Right(getCategoriesResponseModel);
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }
}
