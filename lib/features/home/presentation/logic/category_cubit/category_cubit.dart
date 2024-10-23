// import 'package:bloc/bloc.dart';

// import '../../../data/model/product_model.dart';
// import '../repositories/get_product_repositories.dart';

// part 'category_state.dart';

// class ProductsCubit extends Cubit<ProductsState> {
//   ProductsCubit(this.getProductRepositories) : super(ProductsInitial());

//   final GetProductRepositories getProductRepositories;

//   List<ProductModel> products = [];

//   getProducts() async {
//     emit(ProductsLoading());
//     final response = await getProductRepositories.getProducts();
//     response.fold(
//       (l) => emit(ProductsError(l)),
//       (r) => emit(ProductsScucess(products: products)),
//     );
//   }
// }
