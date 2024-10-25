import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repositories/login_user_repositories.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.userRepositories) : super(LoginInitial());

  final LoginUserRepositories userRepositories;

  login({required String email, required String password}) async {
    emit(LoginLoading());
    final response = await userRepositories.logInUesrRepositories(
        email: email, password: password);
    response.fold(
      (l) => emit(LoginError(errMessage: l.toString())),
      (r) => emit(LoginSuccess()),
    );
  }
}
