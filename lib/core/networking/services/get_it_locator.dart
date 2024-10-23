import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:online_store/core/networking/api/dio_consumer.dart';

final getIt = GetIt.instance;

void setupServicesLocator() {
  getIt.registerSingleton<DioConsumer>(DioConsumer(dio: Dio()));
}
