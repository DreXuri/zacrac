import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zacrac/core/utils/color_costants.dart';
import 'package:zacrac/core/utils/utils.dart';
import 'package:zacrac/core/widgets/my_text.dart';

class ExpenseTitle extends StatelessWidget {
  final String text1;
  final String text2;
  final Color bgColor;
  final Widget child;
  const ExpenseTitle({
    super.key,
    required this.text1,
    required this.text2,
    required this.bgColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(backgroundColor: bgColor, child: child),
        
        hSpace(10.w),
        CustomText(
          data: text1,
          textAlign: TextAlign.start,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
        Expanded(
          child: CustomText(
            data: text2,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.end,
            color: kTextGray,
          ),
        ),
      ],
    );
  }
}
