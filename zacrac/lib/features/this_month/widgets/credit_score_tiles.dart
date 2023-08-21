import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zacrac/core/utils/color_costants.dart';
import 'package:zacrac/core/widgets/my_text.dart';
import 'package:zacrac/features/this_month/model/score_tile.dart';

import '../../../core/utils/utils.dart';

class CreditScoreTile extends StatelessWidget {
  final ScoreTiles scoreHeader;

  const CreditScoreTile({
    super.key,
    required this.scoreHeader,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 4.0.h,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                data: scoreHeader.title,
                textAlign: TextAlign.start,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: kTextBlack,
                height: 1.55.h,
              ),
              CustomText(
                data: scoreHeader.percent,
                textAlign: TextAlign.start,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: kTextBlack,
                height: 1.55.h,
              ),
            ],
          ),
          vSpace(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                data: scoreHeader.status,
                textAlign: TextAlign.start,
                fontSize: 14.sp,
                color: scoreHeader.colo,
                fontWeight: FontWeight.w400,
              ),
              CustomText(
                data: scoreHeader.defaultNo,
                textAlign: TextAlign.start,
                fontSize: 14.sp,
                color: scoreHeader.coloDefault,
              
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
