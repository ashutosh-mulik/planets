import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          height: 1,
          color: Colors.grey.withOpacity(0.5),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 10.w,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Divider(
          height: 1,
          color: Colors.grey.withOpacity(0.4),
        ),
      ],
    );
  }
}