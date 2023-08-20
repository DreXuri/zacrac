import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget vSpace([double height = 8.0]) {
  return SizedBox(height: height.h);
}

Widget hSpace([double width = 8.0]) {
  return SizedBox(height: width.w);
}
