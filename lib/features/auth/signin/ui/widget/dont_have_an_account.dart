import 'package:flutter/material.dart';

import '../../../../../core/themes/my_fonts.dart';
import '../../../login/ui/screen/login_screen.dart';


class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: MyFontsHelper.font14Dark,
        ),
        TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            child: Text(
              "sign in",
              style: MyFontsHelper.font14Blue,
            ))
      ],
    );
  }
}
