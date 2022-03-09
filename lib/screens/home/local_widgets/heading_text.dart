import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeadingText extends StatelessWidget {
  final String text;
  late Offset? offset;

  HeadingText({Key? key, required this.text, this.offset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      slidingBeginOffset: offset == null ? const Offset(-1, 0) : offset!,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 80.sp),
      ),
    );
  }
}
