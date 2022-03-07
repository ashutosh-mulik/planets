import 'package:flutter/material.dart';

class CenterCircle extends CustomPainter {
  double radius;
  CenterCircle({required this.radius});

  @override
  void paint(Canvas canvas, Size size) {

    var paintFilledCircle = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawCircle(const Offset(0, 0), radius, paintFilledCircle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
