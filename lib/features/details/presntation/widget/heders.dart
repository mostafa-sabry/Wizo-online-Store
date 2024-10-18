import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';

class HederAndIconBack extends StatelessWidget {
  const HederAndIconBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            'assets/svg/icons/back.svg',
            height: 30,
            width: 30,
          ),
        ),
        horizontalSpace(220),
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
                  "0",
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
