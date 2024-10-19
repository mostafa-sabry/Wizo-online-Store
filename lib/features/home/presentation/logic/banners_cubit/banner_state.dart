part of 'banner_cubit.dart';

@immutable
sealed class BannerState {}

final class BannerInitial extends BannerState {}

final class BannerSuccess extends BannerState {
  final List<String> banner;

  BannerSuccess(this.banner);
}

class BannerLoading extends BannerState {}

final class BannerError extends BannerState {
  final String message;

  BannerError(this.message);
}
