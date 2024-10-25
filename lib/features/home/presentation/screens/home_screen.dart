import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/core/helpers/spacing.dart';
import 'package:online_store/core/networking/api/dio_consumer.dart';
import 'package:online_store/core/networking/services/get_it_locator.dart';
import 'package:online_store/features/home/presentation/logic/banners_cubit/banner_cubit.dart';
import 'package:online_store/features/home/presentation/logic/get_categoris/cubit/categoris_cubit.dart';
import 'package:online_store/features/home/data/repositories/get_banner_repositories.dart';
import 'package:online_store/features/home/presentation/widget/grid_view.dart';
import '../../data/repositories/get_product_repositories.dart';
import '../widget/banner_widget.dart';
import '../widget/category_name_widget.dart';
import '../widget/heder_widget.dart';
import '../widget/my_text_form_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              BannerCubit(GetBannerRepositories(api: getIt<DioConsumer>()))
                ..getBanner(),
        ),
        BlocProvider(
          create: (context) =>
              CategorisCubit(GetProductRepositories(api: getIt<DioConsumer>()))
                ..getCategories(),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 15, left: 20),
            child: Column(
              children: [
                const HederWidget(),
                verticalSpace(20),
                const MyTextFormFiled(),
                verticalSpace(15),
                const BannersWidget(),
                verticalSpace(10),
                const CateoryNameHeder(
                  title: 'Categories',
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
