import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../home/presentation/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> screens = [
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(), // Added for the fifth item
  ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: screens,
      items: [
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/svg/icons/home.svg',
            height: 35.h,
            width: 35.w,
          ),
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/svg/icons/favourite.svg',
            height: 35.h,
            width: 35.w,
          ),
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/svg/icons/bag.svg',
            height: 35.h,
            width: 35.w,
          ),
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/svg/icons/setting.svg',
            height: 35.h,
            width: 35.w,
          ),
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/svg/icons/message.svg',
            height: 35.h,
            width: 35.w,
          ),
        ),
      ],
      navBarStyle: NavBarStyle.style19, // Optional: Pick your preferred style
    );
  }
}
