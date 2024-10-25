import 'package:flutter/material.dart';

import '../themes/my_colors.dart';
import '../themes/my_fonts.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool isObscure;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const MyTextFormField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      required this.isObscure,
      this.controller,
      this.validator,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: MyFontsHelper.font14Gray,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(
            color: MyColors.black,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(
            color: MyColors.black,
          ),
        ),
      ),
    );
  }
}
