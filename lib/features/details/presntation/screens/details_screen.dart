import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/core/helpers/spacing.dart';
import 'package:online_store/core/networking/services/get_it_locator.dart';
import 'package:online_store/features/details/presntation/logic/cubit/category_details_cubit.dart';
import 'package:online_store/features/home/data/model/get_categories_response_model/category.dart';

import '../../../../core/networking/api/dio_consumer.dart';
import '../../data/get_category_details_response_model/product.dart';
import '../../data/repo/get_category_details_response_model.dart';
import '../widget/heders.dart';
import '../widget/product_widget.dart';

class CategoryDetailsScreen extends StatelessWidget {
  final Category category;
  const CategoryDetailsScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CategoryDetailsCubit(CategoriesRepoImp(api: getIt<DioConsumer>()))
            ..getCategoryDetails(categoryId: category.id ?? 0),
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 16, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HederAndIconBack(),
              verticalSpace(15),
              BlocBuilder<CategoryDetailsCubit, CategoryDetailsState>(
                builder: (context, state) {
                  if (state is GetCategoryDetailsSuccuss) {
                    List<Product> products =
                        state.getCategoryDetailsResponseModel.data?.products ??
                            [];
                    return Expanded(
                      child: GridView.builder(
                        itemCount: products.length,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: 17 / 20,
                        ),
                        itemBuilder: (context, index) {
                          return ProductWidget(
                            product: products[index],
                          );
                        },
                      ),
                    );
                  } else if (state is GetCategoryDetailsLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is GetCategoryDetailsError) {
                    return Text(state.error);
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}
