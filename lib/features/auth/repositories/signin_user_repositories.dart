import 'package:dartz/dartz.dart';

import '../../../core/errors/server_exception.dart';
import '../../../core/networking/api/api_consumer.dart';
import '../../../core/networking/api/end_points.dart';
import '../signin/data/model/signin_model.dart';
import '../signin/data/model/success_signin_model.dart';

class SigninUserRepositories {
  final ApiConsumer api;
  SigninUserRepositories({required this.api});

  Future<Either<ErrorSigninModel, SigninModel>> signinUserRepositories({
    required String email,
    required String password,
    required String name,
    required String phone,
  }) async {
    try {
      final response = await api.post(
        EndPoints.register,
        data: {
          'email': email,
          'password': password,
          'name': name,
          'phone': phone,
        },
      );
      if (response is Map<String, dynamic> &&
          response['status'] == true &&
          response['data'] != null) {
        final userModel = SigninModel.fromJson(response['data']);
        return Right(userModel);
      } else {
        final errorModel = ErrorSigninModel.fromJson(response);
        return Left(errorModel);
      }
    } on ServerException catch (e) {
      return Left(ErrorSigninModel(message: e.errorModel.message));
    }
  }
}
