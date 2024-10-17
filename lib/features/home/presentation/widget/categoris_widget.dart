import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/themes/my_colors.dart';
import 'custom_category_widget.dart';

class CategorisWidgetScroling extends StatelessWidget {
  const CategorisWidgetScroling({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategorisWidget(
            title: 'Foods',
            color: MyColors.darkBlue,
            child: SvgPicture.asset(
              'assets/svg/food.svg',
              height: 30.h,
              width: 30.w,
            ),
          ),
          CategorisWidget(
            title: 'Gift',
            color: MyColors.blue,
            child: SvgPicture.asset(
              'assets/svg/gift-surprise.svg',
              height: 30.h,
              width: 30.w,
            ),
          ),
          CategorisWidget(
            title: 'Fashion',
            color: MyColors.orange,
            child: SvgPicture.asset(
              'assets/svg/spectacles.svg',
              height: 30.h,
              width: 30.w,
            ),
          ),
          CategorisWidget(
            title: 'Gadget',
            color: MyColors.gray,
            child: SvgPicture.asset(
              'assets/svg/game-controller.svg',
              height: 30.h,
              width: 30.w,
            ),
          ),
          CategorisWidget(
            title: 'Gadget',
            color: MyColors.orange2,
            child: SvgPicture.asset(
              'assets/svg/wrist-watch.svg',
              height: 30.h,
              width: 30.w,
            ),
          ),
        ],
      ),
    );
  }
}
