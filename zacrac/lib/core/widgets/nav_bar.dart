import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zacrac/core/utils/assets_constant.dart';

import '../../features/home/view/home_page.dart';
import '../../features/others/view/others_page.dart';
import '../../features/settings/view/settings.dart';
import '../../features/this_month/view/this_month_page.dart';
import '../utils/color_costants.dart';
import '../utils/constants.dart';

class BottomNav extends StatefulWidget {
  static const route = '/bottom_nav';
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const Overview(),
    const ThisMonth(),
    const Others(),
    const Settings(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: kPrimaryBlue,
        unselectedItemColor: kTextBlack,
        backgroundColor: kWhite,
        selectedLabelStyle: kStyleDMSams.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 12.0.sp,
            height: (22 / 12.0).sp,
            color: kPrimaryBlue),
        showUnselectedLabels: true,
        unselectedLabelStyle: kStyleDMSams.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 12.0.sp,
          height: (22 / 12.0).sp,
          color: kInactiveColor,
        ),
        iconSize: 24,
        onTap: updatePage,
        items: [
          // HOME
          BottomNavigationBarItem(
            backgroundColor: kWhite,
            icon: SizedBox(
              width: bottomBarWidth,
              child: SvgPicture.asset(
                Assets.chartIcon,
                color: _page == 0 ? kPrimaryBlue : kTextBlack,
              ),
            ),
            label: 'Overview',
          ),

          // This Month
          BottomNavigationBarItem(
            backgroundColor: kWhite,
            icon: SizedBox(
              width: bottomBarWidth,
              child: SvgPicture.asset(
                Assets.ticketIcon,
                color: _page == 1 ? kPrimaryBlue : kTextBlack,
              ),
            ),
            label: 'This Month',
          ),

          //Other
          BottomNavigationBarItem(
            backgroundColor: kWhite,
            icon: SizedBox(
              width: bottomBarWidth,
              child: SvgPicture.asset(
                Assets.ticketIcon,
                color: _page == 2 ? kPrimaryBlue : kTextBlack,
              ),
            ),
            label: 'Others',
          ),

          // Settings
          BottomNavigationBarItem(
            icon: SizedBox(
              width: bottomBarWidth,
              child: SvgPicture.asset(
                Assets.settingsIcon,
                color: _page == 3 ? kPrimaryBlue : kTextBlack,
              ),
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
