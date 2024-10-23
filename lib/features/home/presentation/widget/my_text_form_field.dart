import 'package:flutter/material.dart';
import 'package:online_store/core/themes/my_colors.dart';

class MyTextFormFiled extends StatelessWidget {
  const MyTextFormFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Search',
        prefixIcon: Icon(
          Icons.search,
          color: MyColors.purple,
          size: 35,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white54,
          ),
        ),
      ),
    );
  }
}
