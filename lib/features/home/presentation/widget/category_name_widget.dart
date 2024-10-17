import 'package:flutter/material.dart';

import '../../../../core/themes/my_fonts.dart';

class CateoryNameHeder extends StatelessWidget {
  const CateoryNameHeder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Categories',
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
