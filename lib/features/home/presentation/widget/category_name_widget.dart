import 'package:flutter/material.dart';

import '../../../../core/themes/my_fonts.dart';

class CateoryNameHeder extends StatelessWidget {
  final String title;

  const CateoryNameHeder({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: MyFontsHelper.font18blck,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            "See all",
            style: MyFontsHelper.font18purble,
          ),
        ),
      ],
    );
  }
}
