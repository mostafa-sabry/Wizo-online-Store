import 'package:bloc/bloc.dart';
import 'package:online_store/features/home/data/model/get_product.dart';

import '../repositories/get_product_repositories.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.getProductRepositories) : super(ProductsInitial());

  final GetProductRepositories getProductRepositories;

  List<GetProductModel> products = [];

  getProducts() async {
    emit(ProductsLoading());
    final response = await getProductRepositories.getProducts();
    response.fold(
      (l) => emit(ProductsError(l)),
      (r) => emit(ProductsScucess(products: r)),
    );
  }
}
