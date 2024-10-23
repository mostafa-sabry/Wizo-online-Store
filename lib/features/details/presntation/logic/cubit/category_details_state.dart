part of 'category_details_cubit.dart';

abstract class CategoryDetailsState {}

final class CategoryDetailsInitial extends CategoryDetailsState {}

final class GetCategoryDetailsSuccuss extends CategoryDetailsState {
  final GetCategoryDetailsResponseModel getCategoryDetailsResponseModel;

  GetCategoryDetailsSuccuss({required this.getCategoryDetailsResponseModel});
}

final class GetCategoryDetailsError extends CategoryDetailsState {
  final String error;

  GetCategoryDetailsError({required this.error});
}

final class GetCategoryDetailsLoading extends CategoryDetailsState {}
