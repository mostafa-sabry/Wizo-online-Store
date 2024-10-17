import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannersWidget extends StatelessWidget {
  const BannersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: [
        "https://student.valuxapps.com/storage/uploads/banners/1689106904Mzsmc.photo_2023-07-11_23-08-24.png",
        "https://student.valuxapps.com/storage/uploads/banners/1689106848R4Nxl.photo_2023-07-11_23-08-19.png",
        "https://student.valuxapps.com/storage/uploads/banners/1689106932hsRxm.photo_2023-07-11_23-07-53.png",
        "https://student.valuxapps.com/storage/uploads/banners/1689110348KHwtl.sales-abstract-landing-page-with-photo_52683-28304 (1) (2).png"
            "https://student.valuxapps.com/storage/uploads/banners/1689108526i90RV.online-shopping-banner-template_23-2148764566 (1).png"
            "https://student.valuxapps.com/storage/uploads/banners/1689108648Avc1g.banner-template-with-summer-sale_23-2148515754 (1).png"
            "https://student.valuxapps.com/storage/uploads/banners/1689107104Ezc0d.photo_2023-07-11_23-07-59.png"
            "https://student.valuxapps.com/storage/uploads/banners/1689106762vIpcq.photo_2023-07-11_23-07-38.png"
            "https://student.valuxapps.com/storage/uploads/banners/1689106805161JH.photo_2023-07-11_23-07-43.png"
            "https://student.valuxapps.com/storage/uploads/banners/1689108280StVEo.cyber-monday-banner-template_23-2148748266 (1).png"
      ].map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Image.network(item, fit: BoxFit.cover),
            );
          },
        );
      }).toList(),
    );
  }
}
