import 'package:flutter/material.dart';
import 'package:online_store/core/themes/my_fonts.dart';


class MyButton extends StatelessWidget {
  final String text;
  final Color color;
  final TextStyle? style;
  final void Function()? onTap;
  const MyButton(
      {super.key,
      required this.text,
      this.onTap,
      this.style,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 62,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: MyFontsHelper.font18White,
          ),
        ),
      ),
    );
  }
}
