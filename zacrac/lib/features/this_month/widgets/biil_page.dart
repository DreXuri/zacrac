import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zacrac/core/utils/color_costants.dart';
import 'package:zacrac/core/utils/utils.dart';
import 'package:zacrac/core/widgets/app_bar.dart';
import 'package:zacrac/core/widgets/my_text.dart';

import '../../../core/utils/assets_constant.dart';
import '../../../core/widgets/button.dart';
import 'bills_tiles.dart';

class BillsPage extends StatefulWidget {
  static const String route = '/BillsPage_screen';

  const BillsPage({super.key});

  @override
  State<BillsPage> createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> with TickerProviderStateMixin {
  late final TabController _tabController;
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
    _tabController.addListener(() {
      this.selectedIndex = _tabController.index;
    });
  }

  List<Widget> _tabs() {
    final tabs = [
      'Bills',
      'Payments',
      'Subscription',
    ];
    return tabs.map((e) => Tab(child: Text(e))).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackground,
        appBar: customAppBar(
          context,
          titleText: 'Bill',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.h),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 0.5,
                        color: kTextGray,
                      ),
                    ),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    labelPadding: EdgeInsets.zero,
                    isScrollable: false,
                    unselectedLabelColor: kTextBlack,
                    labelColor: kPrimaryBlue,
                    indicatorColor: kPrimaryBlue,
                    tabs: _tabs(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      vSpace(28.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              data: '''Your monthly payment 
for subcriptions''',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              textAlign: TextAlign.center),
                        ],
                      ),
                      vSpace(),
                      CustomText(
                          data: r'$61.88',
                          fontSize: 48.sp,
                          fontWeight: FontWeight.w700,
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
                vSpace(32.h),
                CardButton(
                    child: Column(
                  children: [
                    vSpace(),
                    BillsTiles(
                      text1: 'Patreon membership',
                      text2: r'$19.99/mo',
                      widget: SvgPicture.asset(Assets.petronIcon),
                    ),
                    vSpace(),
                    BillsTiles(
                      text1: 'Patreon membership',
                      text2: r'$19.99/mo',
                      widget: SvgPicture.asset(Assets.netflixIcon),
                    ),
                    vSpace(),
                    BillsTiles(
                      text1: 'Patreon membership',
                      text2: r'$19.99/mo',
                      widget: SvgPicture.asset(Assets.appleIcon),
                    ),
                    vSpace(),
                    BillsTiles(
                      text1: 'Patreon membership',
                      text2: r'$19.99/mo',
                      widget: SvgPicture.asset(Assets.spotifyIcon),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ));
  }
}
