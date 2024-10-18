import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyImageSliders extends StatelessWidget {
  final Function(int) onPageChanged;
  final String image;
  const MyImageSliders(
      {super.key, required this.onPageChanged, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: PageView.builder(
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          return Image.network(image);
        },
      ),
    );
  }
}
