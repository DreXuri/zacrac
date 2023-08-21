import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zacrac/core/utils/assets_constant.dart';
import 'package:zacrac/core/utils/utils.dart';
import 'package:zacrac/core/widgets/my_text.dart';

class BillsTiles extends StatelessWidget {
  final Widget widget;
  final String text1;
  final String text2;
  const BillsTiles({
    super.key,
    required this.widget,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h,
      child: Row(
        children: [
          widget,
          hSpace(15.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                data: 'Netflix',
                textAlign: TextAlign.start,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                height: 1.57.sp,
              ),
              CustomText(
                data: r'$12/mo',
                textAlign: TextAlign.start,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                height: 1.75.sp,
              ),
            ],
          ),
          Expanded(
              child: SvgPicture.asset(
            Assets.arrowRightIcon,
            alignment: Alignment.centerRight,
          )),
        ],
      ),
    );
  }
}
