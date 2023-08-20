import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/color_costants.dart';
import '../utils/constants.dart';
import 'my_text.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    this.text,
    this.child,
    this.textStyle,
    this.padding,
    this.buttonStyle,
    this.enabled = true,
    this.backgroundColor,
    this.textColor,
    this.hasOuterPadding = true,
    this.borderColor,
    this.borderRadius,
  });

  final VoidCallback onPressed;
  final Widget? child;
  final String? text;
  final bool enabled;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final ButtonStyle? buttonStyle;
  final Color? backgroundColor;
  final Color? textColor;
  final bool hasOuterPadding;
  final Color? borderColor;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: hasOuterPadding ? 31.0.w : 0,
      ),
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        style: buttonStyle ??
            ElevatedButton.styleFrom(
              backgroundColor: backgroundColor ?? kButtonColor,
              disabledForegroundColor: kPrimaryGreen.withOpacity(0.56),
              padding: padding ??
                  EdgeInsets.symmetric(
                      vertical: child != null ? 15.5.h : 17.h,
                      horizontal: 32.w),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: borderColor ?? Colors.transparent,
                  width: 1.w,
                ),
                borderRadius: BorderRadius.circular(
                  borderRadius ?? 10.r,
                ),
              ),
            ),
        child: Align(
          alignment: Alignment.center,
          child: Center(
            child: child ??
                Text(
                  text ?? ' ',
                  textAlign: TextAlign.center,
                  style: textStyle ??
                      kStyleInter.copyWith(
                        color: textColor ?? Colors.white,
                        fontWeight: FontWeight.w200,
                        fontSize: 16.sp,
                        letterSpacing: 1.sp,
                      ),
                ),
          ),
        ),
      ),
    );
  }
}

// class CardButton extends StatelessWidget {
//   const CardButton({
//     super.key,
//     this.label,
//     this.hasShadow = false,
//     this.shadowColor,
//     this.color,
//     this.textColor,
//     this.fontSize,
//     this.onTap,
//     this.borderRadius,
//     this.border,
//     this.fontWeight,
//     this.padding,
//     this.margin,
//     this.alignToCenter = true,
//     this.child,
//   })  : assert(child != null || label != null,
//             'Either of child or label is required'),
//         assert(child == null || label == null,
//             'You cannot supply both child and label arguments');

//   final String? label;
//   final bool hasShadow;
//   final Color? shadowColor;
//   final Color? color;
//   final Color? textColor;
//   final double? fontSize;
//   final VoidCallback? onTap;
//   final double? borderRadius;
//   final BoxBorder? border;
//   final FontWeight? fontWeight;
//   final EdgeInsetsGeometry? padding;
//   final EdgeInsetsGeometry? margin;
//   final bool alignToCenter;
//   final Widget? child;

//   @override
//   Widget build(BuildContext context) {
//     return OnTapFade(
//       onTap: onTap,
//       child: Container(
//         alignment: alignToCenter ? Alignment.center : null,
//         margin: margin,
//         padding:
//             padding ?? EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
//           border: border,
//           boxShadow: hasShadow
//               ? [
//                   BoxShadow(
//                     color: color ?? kPrimary.withOpacity(0.1),
//                     spreadRadius: 2,
//                     offset: const Offset(0, 2),
//                     blurRadius: 5,
//                   )
//                 ]
//               : null,
//           color: color ?? kWhite,
//         ),
//         child: child ??
//             CustomText(
//               data: label ?? '',
//               textAlign: TextAlign.center,
//               color: textColor,
//               fontSize: fontSize ?? 11.sp,
//               fontWeight: fontWeight ?? FontWeight.w600,
//             ),
//       ),
//     );
//   }
// }
