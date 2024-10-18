import 'package:dartz/dartz.dart';

import '../../../../../core/networking/api/api_consumer.dart';
import '../../../../../core/networking/api/end_points.dart';
import '../../../data/model/get_product.dart';

class GetProductRepositories {
  final ApiConsumer api;

  GetProductRepositories({required this.api});

  Future<Either<String, List<GetProductModel>>> getProducts() async {
    try {
      final response = await api.get(EndPoints.categories);
      print(response); // Print the response for debugging

      // هنا نتحقق من نوع البيانات قبل التحويل
      if (response is Map<String, dynamic>) {
        if (response['data'] != null && response['data'] is List) {
          List<GetProductModel> products = (response['data'] as List)
              .map((product) => GetProductModel.fromJson(product))
              .toList();
          return Right(products);
        } else {
          return const Left('No products found');
        }
      } else {
        return const Left('Unexpected data format');
      }
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }
}
