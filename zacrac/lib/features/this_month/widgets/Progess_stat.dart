import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zacrac/core/utils/utils.dart';
import 'package:zacrac/core/widgets/my_text.dart';

import '../../../core/utils/color_costants.dart';

class ProgessStat extends StatelessWidget {
  const ProgessStat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<double> _valueNotifier = ValueNotifier(0);
    return Center(
      child: DashedCircularProgressBar.aspectRatio(
        aspectRatio: 1.2, // width ÷ height
        valueNotifier: _valueNotifier,
        progress: 40,
        startAngle: 270,
        sweepAngle: 180,
        foregroundColor: kPrimaryBlue,
        backgroundColor: const Color(0xffeeeeee),
        foregroundStrokeWidth: 15,
        backgroundStrokeWidth: 15,
        animation: true,
        seekSize: 6,
        seekColor: const Color(0xffeeeeee),
        child: Center(
          child: ValueListenableBuilder(
              valueListenable: _valueNotifier,
              builder: (_, double value, __) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      vSpace(42.h),
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
                          color: kTextGray,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.center),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.0.w, vertical: 14.h),
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
                    ],
                  )),
        ),
      ),


   
    );
  }
}
