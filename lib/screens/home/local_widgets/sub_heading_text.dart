import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubHeadingText extends StatelessWidget {
  final String subheading;
  late Offset? offset;

  SubHeadingText({Key? key, required this.subheading, this.offset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      slidingBeginOffset: offset == null ? const Offset(0, 1) : offset!,
      child: Text(
        subheading.toUpperCase(),
        textAlign: TextAlign.center,
        style: TextStyle(color: const Color.fromRGBO(123, 123, 140, 1), fontSize: 25.sp, letterSpacing: 4),
      ),
    );
  }
}