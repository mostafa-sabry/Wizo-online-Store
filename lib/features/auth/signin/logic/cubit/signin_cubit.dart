
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repositories/signin_user_repositories.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.signinUserRepositories) : super(SigninInitial());
  final SigninUserRepositories signinUserRepositories;

  //EmailController
  TextEditingController emailController = TextEditingController();
  //PasswordController
  TextEditingController passwordController = TextEditingController();
  //PhoneController
  TextEditingController pohneController = TextEditingController();
  //NameController
  TextEditingController nameController = TextEditingController();
  //FormKey
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  //Function To Signin

  signIn(
      {required String email,
      required String password,
      required String name,
      required String phone}) async {
    emit(SigninLoading());

    final response = await signinUserRepositories.signinUserRepositories(
      email: email,
      password: password,
      name: name,
      phone: phone,
    );
    response.fold(
      (l) => emit(SigninError(errMessage: l.message!)),
      (r) => emit(SigninSuccess()),
    );
  }
}
