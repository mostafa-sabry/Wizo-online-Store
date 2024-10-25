import 'package:flutter/material.dart';
import 'package:online_store/core/themes/my_fonts.dart';

import '../../../../../core/helpers/spacing.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          const SizedBox(
            width: 150,
            child: Divider(
              thickness: 1,
            ),
          ),
          horizontalSpace(10),
          Align(
            alignment: Alignment.center,
            child: Text(
              'or',
              style: MyFontsHelper.font14Dark,
            ),
          ),
          horizontalSpace(10),
          const SizedBox(
            width: 150,
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
