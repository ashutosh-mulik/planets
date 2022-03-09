import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TemperatureText extends StatelessWidget {
  final String text;
  const TemperatureText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(color: Colors.white, fontSize: 40.sp),
      ),
    );
  }
}
