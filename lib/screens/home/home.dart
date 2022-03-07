import 'dart:math';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planets/screens/home/local_widgets/top_circle_anim.dart';

import 'local_widgets/dashed_vertical_line.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/space.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          DelayedDisplay(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    Colors.blue.withOpacity(0.5),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -40.h,
            child: DelayedDisplay(
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Transform.scale(
                  scaleX: 1.6.w,
                  scaleY: 1.5.h,
                  child: Image.asset(
                    'assets/img_planets/earth.png',
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/overlay.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenUtil().screenWidth / 2,
            top: 80.h,
            child: const TopCircleAnim(),
          ),
          Positioned.fill(
            top: (ScreenUtil().screenHeight / 2) * 0.35,
            child: Text(
              'EARTH',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 80.sp),
            ),
          ),
          Positioned.fill(
            top: (ScreenUtil().screenHeight / 2) * 0.70,
            child: Text(
              'BLUES FOR RED PLANET',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 20.sp, letterSpacing: 4),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  height: 1,
                  color: Colors.white.withOpacity(0.5),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        'AT\nDAY',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 12.sp),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      DelayedDisplay(
                        child: Text(
                          '20°',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white, fontSize: 40.sp),
                        ),
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      CustomPaint(
                        size: Size(1, 50.h),
                        painter: DashedLineVerticalPainter(),
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Text(
                        'AT\nNIGHT',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 12.sp),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      DelayedDisplay(
                        child: Text(
                          '-70°',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white, fontSize: 40.sp),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.5),
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Transform.rotate(
                                  angle: 270 * pi / 180,
                                  child: const Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
