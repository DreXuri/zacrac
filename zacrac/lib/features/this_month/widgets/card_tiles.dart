import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zacrac/core/utils/utils.dart';

import '../../../core/utils/color_costants.dart';
import '../../../core/widgets/my_text.dart';

class CardTiles extends StatelessWidget {
  final String text1;
  final String price;
  final String price1;
  final Widget? widget;
  
  const CardTiles({
    super.key,
    required this.text1,
    required this.price,
    required this.price1, this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              data: text1,
              // data: 'Auto  & transport',
              textAlign: TextAlign.start,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
            CustomText(
              data: price,
              // data: r'$700',
              textAlign: TextAlign.start,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
        vSpace(10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          widget   ?? Container(
              height: 4.h,
              width: 211.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: kSecondaryRed,
              ),
            ),
            CustomText(
              data: price1,
              textAlign: TextAlign.start,
              fontSize: 12.sp,
              color: kTextGray,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ],
    );
  }
}
