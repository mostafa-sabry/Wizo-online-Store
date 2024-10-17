import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_store/core/helpers/spacing.dart';
import '../widget/categoris_widget.dart';
import '../widget/category_name_widget.dart';
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
              const CateoryNameHeder(),
              verticalSpace(15),
              const CategorisWidgetScroling(),
              verticalSpace(20),
              const BannersWidget(),
              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}

class BannersWidget extends StatelessWidget {
  const BannersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 200.0),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                'text $i',
                style: const TextStyle(fontSize: 16.0),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}


// Container(
    //   width: double.infinity,
    //   height: 130.h,
    //   decoration: const BoxDecoration(
    //     color: Colors.blueGrey,
    //   ),
    // );