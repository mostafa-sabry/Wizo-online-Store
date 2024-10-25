import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/features/auth/repositories/login_user_repositories.dart';

import '../../../../../core/networking/api/dio_consumer.dart';
import '../../logic/cubit/login_cubit.dart';
import '../widget/email_and_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LoginCubit(LoginUserRepositories(api: DioConsumer(dio: Dio()))),
      child: const Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: EmailAndPassword(),
          ),
        ),
      ),
    );
  }
}
