import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_store/core/helpers/spacing.dart';

import '../../../../core/themes/my_fonts.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 102.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              image:
                  DecorationImage(image: AssetImage('assets/images/phone.png')),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
          verticalSpace(5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Smartphone",
              style: MyFontsHelper.font12black,
            ),
          ),
          verticalSpace(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$ 120.00',
                  style: MyFontsHelper.font18blck,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/add_cart.svg",
                    height: 30.h,
                    width: 30.w,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
