import 'package:auto_size_text/auto_size_text.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TemperatureText extends StatelessWidget {
  final String text;
  const TemperatureText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      child: AutoSizeText(
        text.toUpperCase(),
        textAlign: TextAlign.left,
        minFontSize: 35.sp,
        style: const TextStyle(color: Colors.white,),
      ),
    );
  }
}
