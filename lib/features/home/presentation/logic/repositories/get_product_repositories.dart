import 'package:dartz/dartz.dart';

import '../../../../../core/networking/api/api_consumer.dart';
import '../../../../../core/networking/api/end_points.dart';
import '../../../data/model/get_product.dart';

class GetProductRepositories {
  final ApiConsumer api;

  GetProductRepositories({required this.api});

  Future<Either<String, List<CategoryModel>>> getProducts() async {
    try {
      final response = await api.get(EndPoints.categories);
      List<CategoryModel> category = [];
      CategoryModel categoryModel;

      for (var item in response.data!.categories!) {
        categoryModel = CategoryModel.fromJson(item);
        category.add(categoryModel);
      }
      return Right(response.data!.categories!);
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }
}


  // Future<List<BooksModel>> getBooks() async {
  //   final data = await ApiService()
  //       .get(apiUrl: 'https://api.codingarabic.online/api/books');
  //   List<BooksModel> books = [];
  //   BooksModel booksModel;

  //   for (var item in data['data']) {
  //     booksModel = BooksModel.fromJson(item);
  //     books.add(booksModel);
  //   }
  //   return books;