import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/core/helpers/spacing.dart';
import 'package:online_store/core/networking/api/dio_consumer.dart';
import 'package:online_store/features/home/presentation/logic/cubit/products_cubit.dart';
import 'package:online_store/features/home/presentation/logic/repositories/get_product_repositories.dart';
import 'package:online_store/features/home/presentation/widget/grid_view.dart';
import '../widget/banner_widget.dart';
import '../widget/categoris_widget.dart';
import '../widget/category_name_widget.dart';
import '../widget/heder_widget.dart';
import '../widget/my_text_form_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductsCubit(GetProductRepositories(api: DioConsumer(dio: Dio())))
            ..getProducts(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 15, left: 20),
            child: Column(
              children: [
                const HederWidget(),
                verticalSpace(20),
                const MyTextFormFiled(),
                verticalSpace(20),
                const CateoryNameHeder(
                  title: 'Categories',
                ),
                verticalSpace(15),
                const CategorisWidgetScroling(),
                verticalSpace(20),
                const BannersWidget(),
                verticalSpace(20),
                const CateoryNameHeder(
                  title: 'Featured products',
                ),
                verticalSpace(15),
                const GridViewWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
