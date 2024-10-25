import 'package:flutter/material.dart';

import '../../../../../core/themes/my_colors.dart';
import '../widget/singin_widget.dart';

class SigninAccount extends StatefulWidget {
  const SigninAccount({super.key});

  @override
  State<SigninAccount> createState() => _SigninAccountState();
}

class _SigninAccountState extends State<SigninAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.white,
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: CreateAccount(),
        ),
      ),
    );
  }
}
