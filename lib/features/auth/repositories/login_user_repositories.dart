

import '../../../core/errors/server_exception.dart';
import '../../../core/helpers/cache_helper.dart';
import '../../../core/networking/api/api_consumer.dart';
import 'package:dartz/dartz.dart';

import '../../../core/networking/api/end_points.dart';
import '../login/data/model/error_login_model.dart';
import '../login/data/model/login_model.dart';

class LoginUserRepositories {
  final ApiConsumer api;

  LoginUserRepositories({required this.api});

  Future<Either<ErrorModel, LoginModel>> logInUesrRepositories(
      {required String email, required String password}) async {
    try {
      final response = await api.post(
        EndPoints.login,
        data: {
          'email': email,
          'password': password,
        },
      );
      if (response is Map<String, dynamic> &&
          response['status'] == true &&
          response['data'] != null) {
        final user = LoginModel.fromJson(response['data']);
        CacheHelper().saveData(key: 'token', value: user.data?.token);
        return Right(user);
      } else {
        final errorModel = ErrorModel.fromJson(response);
        return Left(errorModel);
      }
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}


// try {
//       emit(LoginLoading());
//       final response = await api.post(
//         EndPoints.login,
//         data: {
//           'email': email,
//           'password': password,
//         },
//       );

//       if (response is Map<String, dynamic> &&
//           response['status'] == true &&
//           response['data'] != null) {
//         user = LoginModel.fromJson(response['data']);
//         emit(LoginSuccess());
//       } else {
//         final errorModel = ErrorModel.fromJson(response);
//         emit(LoginError(errMessage: errorModel.message));
//       }
//     } on ServerException catch (e) {
//       emit(LoginError(errMessage: e.errorModel.message));
//     }