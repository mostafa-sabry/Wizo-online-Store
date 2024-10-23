import 'package:dartz/dartz.dart';
import 'package:online_store/features/home/data/model/get_categories_response_model/get_categories_response_model.dart';

import '../../../../core/networking/api/api_consumer.dart';
import '../../../../core/networking/api/end_points.dart';

class GetProductRepositories {
  final ApiConsumer api;

  GetProductRepositories({required this.api});

  Future<Either<String, GetCategoriesResponseModel>> getCategories() async {
    try {
      Map<String, dynamic> jsonData = await api.get(EndPoints.categories);
      GetCategoriesResponseModel getCategoriesResponseModel =
          GetCategoriesResponseModel.fromJson(jsonData);
      return Right(getCategoriesResponseModel);
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }
}
