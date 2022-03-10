import 'dart:ui';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Planet extends StatelessWidget {
  final String url;
  late Offset? offset;

  Planet({Key? key, required this.url, this.offset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      slidingBeginOffset: offset == null ? const Offset(0, 1) : offset!,
      child: Hero(
        tag: 'img_planet',
        child: Transform.scale(
          scaleX: 1.5.w,
          scaleY: 1.3.h,
          child: Stack(
            alignment: Alignment.center,
            key: key,
            children: [
              Transform.translate(
                offset: const Offset(8.0, 8.0),
                child: Transform.scale(
                  scale: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(url),
                  ),
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(url),
              )
            ],
          ),
        ),
      ),
    );
  }
}
