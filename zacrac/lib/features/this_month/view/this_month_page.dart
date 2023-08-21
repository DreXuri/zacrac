import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zacrac/core/utils/color_costants.dart';

import '../widgets/biil_page.dart';
import '../widgets/credit_page.dart';
import '../widgets/pageOne.dart';

class ThisMonth extends StatefulWidget {
  static const String route = '/thisMonth';
  const ThisMonth({Key? key}) : super(key: key);

  @override
  State<ThisMonth> createState() => _ThisMonthState();
}

class _ThisMonthState extends State<ThisMonth> {
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          PageView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: pageController,
            children: const [
              Expense(),
              BillsPage(),
              CreditPage(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 5.w),
              child: SizedBox(
                height: 40.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.ease);
                      },
                      child: SmoothPageIndicator(
                          controller: pageController,
                          count: 3,
                          effect: ExpandingDotsEffect(
                            dotHeight: 6.h,
                            dotWidth: 3.h,
                            activeDotColor: kTextBlack,
                            dotColor: kTextBlack,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
