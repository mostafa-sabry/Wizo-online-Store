import 'package:dartz/dartz.dart';
import 'package:online_store/core/networking/api/api_consumer.dart';
import '../../../../core/networking/api/end_points.dart';

class GetBannerRepositories {
  final ApiConsumer api;

  GetBannerRepositories({required this.api});

  Future<Either<String, List<String>>> getBanner() async {
    try {
      final response = await api.get(EndPoints.banners);

      List<String> bannerImages =
          List<String>.from(response['data'].map((banner) => banner['image']));

      return Right(bannerImages);
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }
}
