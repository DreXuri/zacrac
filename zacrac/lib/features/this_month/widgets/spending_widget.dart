import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zacrac/core/widgets/my_text.dart';

class spendingsWidget extends StatelessWidget {
  final String text1;
  final String text2;
  const spendingsWidget({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            data: text1,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.start),
        CustomText(
            data: text2,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.start),
      ],
    );
  }
}
