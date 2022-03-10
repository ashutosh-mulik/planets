import 'package:flutter/material.dart';

class PlanetWithPath extends CustomPainter {
  double radius;
  PlanetWithPath({required this.radius});

  @override
  void paint(Canvas canvas, Size size) {

    var paintStroke = Paint()
      ..color = Colors.white
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(Offset.zero, radius, paintStroke);

    var paintFilledCircle = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(radius, 0), radius * 0.15, paintFilledCircle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
