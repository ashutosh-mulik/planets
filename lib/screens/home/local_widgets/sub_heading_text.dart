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
      slidingBeginOffset: offset == null ? const Offset(-1, 0) : offset!,
      child: Text(
        subheading,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 20.sp, letterSpacing: 4),
      ),
    );
  }
}