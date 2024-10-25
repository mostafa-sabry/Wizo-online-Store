import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/core/networking/api/dio_consumer.dart';

import '../../../../../core/helpers/show_toast.dart';
import '../../../../../core/helpers/spacing.dart';

import '../../../../../core/themes/my_colors.dart';
import '../../../../../core/themes/my_fonts.dart';
import '../../../../../core/widget/my_button.dart';
import '../../../../../core/widget/my_text_form_field.dart';
import '../../../login/ui/screen/login_screen.dart';
import '../../../login/ui/widget/my_divider.dart';
import '../../../repositories/signin_user_repositories.dart';
import '../../logic/cubit/signin_cubit.dart';
import 'dont_have_an_account.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({
    super.key,
  });

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SigninCubit(SigninUserRepositories(api: DioConsumer(dio: Dio()))),
      child: BlocConsumer<SigninCubit, SigninState>(
        listener: (context, state) {
          if (state is SigninSuccess) {
            showTost(msg: 'تم التسجيل بنجاح');
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          } else if (state is SigninError) {
            showTost(msg: state.errMessage);
          }
        },
        builder: (context, state) {
          return Form(
            key: context.read<SigninCubit>().formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(32),
                  Text(
                    'Join With Us',
                    style: MyFontsHelper.font32Dark,
                  ),
                  verticalSpace(57),
                  MyTextFormField(
                    hintText: 'Name',
                    controller: context.read<SigninCubit>().nameController,
                    isObscure: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Name';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(24),
                  MyTextFormField(
                    hintText: 'Email',
                    controller: context.read<SigninCubit>().emailController,
                    isObscure: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Email';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(24),
                  MyTextFormField(
                    hintText: 'Phone',
                    keyboardType: TextInputType.phone,
                    controller: context.read<SigninCubit>().pohneController,
                    isObscure: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter  Phone';
                      }
                      if (value.length < 10) {
                        return 'Phone must be at least 10 characters';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(24),
                  MyTextFormField(
                    hintText: 'Password',
                    controller: context.read<SigninCubit>().passwordController,
                    isObscure: isObscure,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: isObscure
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                  verticalSpace(10),
                  Text(
                    'Forget you password ?',
                    style: MyFontsHelper.font12Blue,
                  ),
                  verticalSpace(16),
                  state is SigninLoading
                      ? Center(
                          child: CircularProgressIndicator(
                          color: MyColors.orange2,
                        ))
                      : MyButton(
                          text: 'Register',
                          onTap: () {
                            if (context
                                .read<SigninCubit>()
                                .formKey
                                .currentState!
                                .validate()) {
                              context.read<SigninCubit>().signIn(
                                    email: context
                                        .read<SigninCubit>()
                                        .emailController
                                        .text
                                        .trim(),
                                    password: context
                                        .read<SigninCubit>()
                                        .passwordController
                                        .text
                                        .trim(),
                                    name: context
                                        .read<SigninCubit>()
                                        .nameController
                                        .text
                                        .trim(),
                                    phone: context
                                        .read<SigninCubit>()
                                        .pohneController
                                        .text
                                        .trim(),
                                  );
                            }
                          },
                          color: MyColors.black,
                        ),
                  verticalSpace(44.5),
                  const MyDivider(),
                  const DontHaveAnAccount()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
