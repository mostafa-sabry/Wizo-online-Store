import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/themes/my_fonts.dart';

class CategorisWidget extends StatelessWidget {
  final String title;
  final Color color;
  final Widget? child;
  const CategorisWidget({
    super.key,
    required this.title,
    required this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55.h,
          width: 55.w,
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: child,
          ),
        ),
        verticalSpace(10),
        Text(
          title,
          style: MyFontsHelper.font18blck,
        )
      ],
    );
  }
}
