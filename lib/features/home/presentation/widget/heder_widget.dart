import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/themes/my_fonts.dart';

class HederWidget extends StatelessWidget {
  const HederWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/svg/frame.svg',
          height: 45,
          width: 45,
        ),
        horizontalSpace(10),
        Text(
          'Wizo',
          style: MyFontsHelper.font20black,
        ),
        horizontalSpace(180),
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/svg/not.svg",
                height: 25,
                width: 25,
              ),
            ),
            const Positioned(
              top: 3,
              left: 5,
              child: CircleAvatar(
                backgroundColor: Colors.deepPurple,
                radius: 8,
              ),
            ),
          ],
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/svg/heart.svg",
                height: 25,
                width: 25,
              ),
            ),
            Positioned(
              top: -1,
              right: -5,
              child: CircleAvatar(
                backgroundColor: Colors.deepPurple.withOpacity(0.8),
                radius: 12,
                child: const Text(
                  "1",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
