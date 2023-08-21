import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zacrac/core/utils/color_costants.dart';
import 'package:zacrac/core/widgets/my_text.dart';

import '../utils/assets_constant.dart';

PreferredSizeWidget customAppBar(
  BuildContext context, {
  String titleText = '',
  Widget? title,
  double elevation = 0,
  double? fontSize,
  double? titleSpacing,
  bool automaticallyImplyLeading = true,
  Widget? leading,
  Color? backgroundColor,
  IconThemeData? iconThemeData,
  TabBar? bottom,
  List<Widget>? action,
  bool hasAction = true,
  bool hasLeading = true,
  VoidCallback? onBackTap,
  double preferredSize = 55.0,
  bool centerTitle = true,
  Color? titleColor,
  FontWeight? fontWeight = FontWeight.bold,
}) {
  return AppBar(
    centerTitle: centerTitle,
    leading: !hasLeading
        ? null
        : GestureDetector(
            onTap: onBackTap ??
                () {
                  Navigator.pop(
                    context,
                  );
                },
            child: leading ??
                SizedBox(
                  height: 24.h,
                  width: 24.h,
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 25.0.w,
                        top: 8.h,
                      ),
                      child: SvgPicture.asset(Assets.arrowBckIcon),
                    ),
                  ),
                ),
          ),
    automaticallyImplyLeading: automaticallyImplyLeading,
    backgroundColor: backgroundColor ?? kWhite,
    elevation: elevation,
    titleSpacing: titleSpacing,
    bottom: bottom,
    iconTheme: iconThemeData,
    actions: action ??
        [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(
                right: 25.0.w,
                top: 8.h,
              ),
              child: SvgPicture.asset(
                Assets.addIcon,
              ),
            ),
          ),
        ],
    title: Padding(
      padding: EdgeInsets.only(top: 5.0.h),
      child: title ??
          CustomText(
            data: titleText,
            overflow: TextOverflow.fade,
            fontSize: fontSize ?? 18.0.sp,
            color: titleColor ?? kTextBlack,
            fontWeight: fontWeight ?? FontWeight.w700,
            textAlign: TextAlign.center,
          ),
    ),
  );
}
