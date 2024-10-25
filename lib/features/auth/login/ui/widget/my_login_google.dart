import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/spacing.dart';

class MyLoginGoogle extends StatelessWidget {
  const MyLoginGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/Vector2.svg'),
        horizontalSpace(25),
        SvgPicture.asset('assets/Vector1.svg'),
      ],
    );
  }
}
