import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/features/home/presentation/logic/repositories/get_banner_repositories.dart';

part 'banner_state.dart';

class BannerCubit extends Cubit<BannerState> {
  BannerCubit(this.getBannerRepositories) : super(BannerInitial());

  final GetBannerRepositories getBannerRepositories;

  getBanner() async {
    emit(BannerLoading());
    final response = await getBannerRepositories.getBanner();
    response.fold(
      (l) => emit(BannerError(l)),
      (r) => emit(BannerSuccess(r)),
    );
  }
}
