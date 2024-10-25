import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/core/helpers/show_toast.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/themes/my_colors.dart';
import '../../../../../core/themes/my_fonts.dart';
import '../../../../../core/widget/my_button.dart';
import '../../../../../core/widget/my_text_form_field.dart';
import '../../../../navbar/nav_bar_screen.dart';
import '../../logic/cubit/login_cubit.dart';

import 'my_not_a_member.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({
    super.key,
  });

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          showTost(msg: 'تم تسجيل الدخول بنجاح');
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const BottomNavBar()));
        } else if (state is LoginError) {
          showTost(msg: state.errMessage);
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(180),
                Text(
                  'Welcome back!',
                  style: MyFontsHelper.font32Dark,
                ),
                verticalSpace(32),
                MyTextFormField(
                  hintText: 'Email',
                  controller: emailController,
                  isObscure: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Email or Phone';
                    }
                    return null;
                  },
                ),
                verticalSpace(24),
                MyTextFormField(
                  hintText: 'Password',
                  controller: passwordController,
                  isObscure: isObscure,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Password';
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
                state is LoginLoading
                    ? Center(
                        child: CircularProgressIndicator(
                        color: MyColors.white,
                      ))
                    : MyButton(
                        text: 'Login',
                        color: MyColors.black,
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            context.read<LoginCubit>().login(
                                email: emailController.text,
                                password: passwordController.text);
                          }
                        },
                      ),
                verticalSpace(20.5),
                const MyNotAMember()
              ],
            ),
          ),
        );
      },
    );
  }
}
