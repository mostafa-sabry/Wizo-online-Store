// import 'package:dartz/dartz.dart';

// import '../../../../../core/networking/api/api_consumer.dart';
// import '../../../../../core/networking/api/end_points.dart';
// import '../../../data/model/product_model.dart';

// class GetProductRepositories {
//   final ApiConsumer api;

//   GetProductRepositories({required this.api});

//   Future<Either<String, List<ProductModel>>> getProducts() async {
//     try {
//       final response = await api.get(EndPoints.categories);
//       List<ProductModel> products = [];
//       ProductModel productModel;

//       for (var item in response['products']) {
//         productModel = ProductModel.fromJson(item);
//         products.add(productModel);
//       }
//       return Right(products);
//     } on Exception catch (e) {
//       return Left(e.toString());
//     }
//   }
// }
