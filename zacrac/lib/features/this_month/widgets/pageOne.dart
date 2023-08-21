import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zacrac/core/utils/color_costants.dart';
import 'package:zacrac/core/utils/utils.dart';
import 'package:zacrac/core/widgets/app_bar.dart';
import 'package:zacrac/core/widgets/my_text.dart';

import '../../../core/utils/assets_constant.dart';
import '../../../core/widgets/button.dart';
import '../widgets/card_tiles.dart';
import '../widgets/expense_title.dart';
import '../widgets/spending_widget.dart';

class Expense extends StatelessWidget {
  const Expense({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackground,
        appBar: customAppBar(
          context,
          titleText: 'Expense',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      vSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              data: 'September 2021',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              textAlign: TextAlign.center),
                          SvgPicture.asset(Assets.arrowDownIcon)
                        ],
                      ),
                      CustomText(
                          data: r'$1,812',
                          fontSize: 48.sp,
                          fontWeight: FontWeight.w700,
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
                vSpace(28.h),
                CardButton(
                    child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        spendingsWidget(
                          text1: 'Left to spend',
                          text2: r'$738',
                        ),
                        spendingsWidget(
                          text1: 'Monthly budget',
                          text2: r'$2,550',
                        )
                      ],
                    ),
                    vSpace(15.h),
                    SvgPicture.asset(Assets.barOneIcon)
                  ],
                )),
                vSpace(),
                CardButton(
                    child: Column(
                  children: [
                    ExpenseTitle(
                      text1: 'Auto & transport',
                      text2: r'$700',
                      bgColor: kIconBackhround.withOpacity(0.4),
                      child: SvgPicture.asset(Assets.carIcon),
                    ),
                    vSpace(15.h),
                    CardTiles(
                      widget: SvgPicture.asset(Assets.barTwoIcon),
                      price: r'$350',
                      price1: r'Left $186',
                      text1: 'Auto  & transport',
                    ),
                    vSpace(15.h),
                    CardTiles(
                      price: r'$250',
                      price1: r'Left $182',
                      text1: 'Auto  insurance',
                      widget: SvgPicture.asset(Assets.barThreeIcon),
                    ),
                  ],
                )),
                vSpace(),
                CardButton(
                    child: Column(
                  children: [
                    ExpenseTitle(
                      text1: 'Bill & Ultilities',
                      text2: r'$320',
                      bgColor: kSecondaryRed.withOpacity(0.2),
                      child: SvgPicture.asset(Assets.receiptIcon),
                    ),
                    vSpace(15.h),
                    CardTiles(
                      price: r'$350',
                      price1: r'Left $186',
                      text1: 'Subscriptions',
                    ),
                    vSpace(15.h),
                    CardTiles(
                      price: r'$138',
                      price1: r'Left $10',
                      text1: 'House service',
                      widget: SvgPicture.asset(Assets.barfourIcon),
                    ),
                    vSpace(15.h),
                    CardTiles(
                      price: r'$130',
                      price1: r'Left $30',
                      text1: 'Maintenance',
                      widget: SvgPicture.asset(Assets.barfiveIcon),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ));
  }
}
