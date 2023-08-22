import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zacrac/core/utils/color_costants.dart';

class Gaugee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 275.w,
        height: 141.h,
        child: CustomPaint(
          painter: CircularGaugePainter(),
        ),
      ),
    );
  }
}

class CircularGaugePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double diameter =
        min(size.width, size.height); // Use diameter instead of radius

    // Define the colors for the three sections
    final List<Color> sectionColors = [
      kPrimaryBlue,
      kWhite,
      kPrimaryBlue,
      kWhite,
      kPrimaryBlue,
      kTextGray,
      kWhite,
      kTextGray,
    ];
    final double totalValue = 6.0; // Sum of values for all sections
    final List<double> sectionValues = [
      2.5,
      0.02,
      0.9,
      0.02,
      0.625,
      0.625,
      0.02,
      1.25,
    ]; // Values for each section

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth =
          diameter / 30.r; // Adjust the stroke width based on diameter

    double startAngle = -pi / 1; // Start from -90 degrees

    for (int i = 0; i < sectionValues.length; i++) {
      final double sweepAngle = (sectionValues[i] / totalValue) *
          3.14; // End at  degrees (approximately 3.7 radians)
      paint.color = sectionColors[i];
      canvas.drawArc(
        Rect.fromCircle(
            center: Offset(centerX, centerY),
            radius: diameter / 1.2), // Use diameter / 2 as the radius
        startAngle,
        sweepAngle,
        false,
        paint,
      );
      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
