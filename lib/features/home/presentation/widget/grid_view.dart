import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/features/home/presentation/logic/get_categoris/cubit/categoris_cubit.dart';

import 'package:online_store/features/home/presentation/widget/produt_widget.dart';

import '../../data/model/get_categories_response_model/category.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategorisCubit, CategoriesState>(
      listener: (context, state) {
        if (state is GetCategoriesSuccuss) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Success"),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is GetCategoriesSuccuss) {
          List<Category> categories =
              state.getCategoriesResponseModel.data?.categories ?? [];
          return Expanded(
            child: GridView.builder(
              itemCount: categories.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 11 / 15,
              ),
              itemBuilder: (context, index) {
                return CategorisWidget(category: categories[index]);
              },
            ),
          );
        } else if (state is GetCategoriesLoading) {
          return const CircularProgressIndicator();
        } else if (state is GetCategoriesError) {
          return Text(state.error);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
