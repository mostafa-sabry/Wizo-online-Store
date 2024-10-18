import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/core/networking/api/dio_consumer.dart';
import 'package:online_store/features/home/presentation/logic/cubit/products_cubit.dart';
import 'package:online_store/features/home/presentation/logic/repositories/get_product_repositories.dart';
import 'package:online_store/my_app.dart';

void main() {
  runApp(BlocProvider(
    create: (context) =>
        ProductsCubit(GetProductRepositories(api: DioConsumer(dio: Dio()))),
    child: const MyApp(),
  ));
}
