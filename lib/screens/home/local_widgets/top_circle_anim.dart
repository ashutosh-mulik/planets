import 'dart:math';

import 'package:flutter/material.dart';
import 'package:planets/screens/home/local_widgets/center_circle.dart';
import 'package:planets/screens/home/local_widgets/planet_with_path.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopCircleAnim extends StatefulWidget {
  const TopCircleAnim({Key? key}) : super(key: key);

  @override
  State<TopCircleAnim> createState() => _TopCircleAnimState();
}

class _TopCircleAnimState extends State<TopCircleAnim> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    );

    Tween<double> _rotationTween = Tween(begin: -pi, end: pi);
    animation = _rotationTween.animate(controller);

    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: CenterCircle(
            radius: 5.r,
          ),
        ),
        AnimatedBuilder(
          animation: controller,
          builder: (context, widget) {
            return Transform.rotate(
              angle: animation.value * 3,
              child: widget,
            );
          },
          child: CustomPaint(
            painter: PlanetWithPath(
              radius: 20.r,
            ),
          ),
        ),
        AnimatedBuilder(
          animation: controller,
          builder: (context, widget) {
            return Transform.rotate(
              angle: animation.value * 8,
              child: widget,
            );
          },
          child: CustomPaint(
            painter: PlanetWithPath(
              radius: 10.r,
            ),
          ),
        ),
        AnimatedBuilder(
          animation: controller,
          builder: (context, widget) {
            return Transform.rotate(
              angle: animation.value * 4,
              child: widget,
            );
          },
          child: CustomPaint(
            painter: PlanetWithPath(
              radius: 15.r,
            ),
          ),
        ),
      ],
    );
  }
}
