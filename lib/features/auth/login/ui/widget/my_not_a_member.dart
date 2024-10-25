import 'package:flutter/material.dart';
import 'package:online_store/core/themes/my_fonts.dart';

import '../../../signin/ui/screen/signin_account_screen.dart';

class MyNotAMember extends StatelessWidget {
  const MyNotAMember({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Not A Member ?',
          style: MyFontsHelper.font14Dark,
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SigninAccount()));
            },
            child: Text(
              "Register Now",
              style: MyFontsHelper.font14Blue,
            ))
      ],
    );
  }
}
