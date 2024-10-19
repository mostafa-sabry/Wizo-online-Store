part of 'products_cubit.dart';

abstract class ProductsState {}

final class ProductsInitial extends ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsScucess extends ProductsState {
  final List<CategoryModel> products;
  ProductsScucess({required this.products});
}

class ProductsError extends ProductsState {
  final String message;

  ProductsError(this.message);
}
