import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zacrac/core/utils/color_costants.dart';
import 'package:zacrac/core/utils/utils.dart';
import 'package:zacrac/core/widgets/app_bar.dart';
import 'package:zacrac/core/widgets/my_text.dart';

import '../../../core/utils/assets_constant.dart';
import '../../../core/widgets/button.dart';
import '../model/score_tile.dart';
import 'credit_score_tiles.dart';

class CreditPage extends StatelessWidget {
  const CreditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackground,
        appBar: customAppBar(
          context,
          titleText: 'Credit Score',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          Assets.trackImage,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 28.0),
                          child: Container(
                            child: Column(
                              children: [
                                vSpace(10),
                                CustomText(
                                    data: 'Good',
                                    fontSize: 14.sp,
                                    color: kTextGray,
                                    fontWeight: FontWeight.w400,
                                    textAlign: TextAlign.center),
                                CustomText(
                                    data: '660',
                                    fontSize: 48.sp,
                                    fontWeight: FontWeight.w700,
                                    textAlign: TextAlign.center),
                                CustomText(
                                    data: '+6pts',
                                    fontSize: 14.sp,
                                    color: kPrimaryBlue,
                                    fontWeight: FontWeight.w400,
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          data: '400',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: kTextGray,
                          textAlign: TextAlign.center),
                      CustomText(
                          data: 'Last update on 20 Jul 2020',
                          fontSize: 14.sp,
                          color: kTextGray,
                          fontWeight: FontWeight.w700,
                          textAlign: TextAlign.center),
                      CustomText(
                          data: '850',
                          fontSize: 14.sp,
                          color: kTextGray,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
                CardButton(
                    child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: score().length,
                      itemBuilder: (context, index) {
                        return CreditScoreTile(
                          scoreHeader: score()[index],
                        );
                      },
                    ),
                  ],
                )),
              ],
            ),
          ),
        ));
  }

  List<ScoreTiles> score() {
    return [
      ScoreTiles(
        id: 'zendac',
        defaultNo: '1 missed',
        percent: '95%',
        status: 'Good',
        title: 'On-time payment',
        colo: kPrimaryGreen,
        coloDefault: kTextGray,
      ),
      ScoreTiles(
        id: 'zendac',
        defaultNo: '-15%',
        percent: '95%',
        status: 'Not Bad',
        title: 'Credit Utilization',
        colo: kSecondaryRed,
        coloDefault: kSecondaryRed,
      ),
      ScoreTiles(
        id: 'zendac',
        defaultNo: '',
        percent: '8 year',
        status: 'Good',
        title: 'Age off credit',
        colo: kPrimaryGreen,
        coloDefault: kTextBlack,
      ),
    ];
  }
}
