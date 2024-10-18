import 'package:flutter/material.dart';
import 'package:online_store/core/helpers/spacing.dart';

import '../widget/heders.dart';
import '../widget/image_sliders.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 16, left: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HederAndIconBack(),
              verticalSpace(15),
              MyImageSliders(
                onPageChanged: (index) {},
                image:
                    'https://student.valuxapps.com/storage/uploads/products/1615440322npwmU.71DVgBTdyLL._SL1500_.jpg',
              )
            ],
          ),
        ),
      )),
    );
  }
}
