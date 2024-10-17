import 'package:flutter/material.dart';
import 'package:online_store/core/helpers/spacing.dart';
import 'package:online_store/core/themes/my_fonts.dart';
import '../widget/categoris_widget.dart';
import '../widget/heder_widget.dart';
import '../widget/my_text_form_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 15, left: 20),
          child: Column(
            children: [
              const HederWidget(),
              verticalSpace(20),
              const MyTextFormFiled(),
              verticalSpace(20),
              Row(
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
              ),
              verticalSpace(15),
              const CategorisWidgetScroling(),
              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}
