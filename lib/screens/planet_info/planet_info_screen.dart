import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanetInfoScreen extends StatefulWidget {
  const PlanetInfoScreen({Key? key}) : super(key: key);

  @override
  State<PlanetInfoScreen> createState() => _PlanetInfoScreenState();
}

class _PlanetInfoScreenState extends State<PlanetInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(8, 9, 22, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Button Back
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Hero(
                      tag: 'btn_more',
                      child: Container(
                        height: 40.h,
                        width: 47.w,
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
                            angle: 90 * pi / 180,
                            child: const Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 320.h,
                child: const PlanetWithText(),
              ),

              Container(
                width: 125.w,
                margin: EdgeInsets.only(left: 20.w),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.ac_unit,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'YOUR WEIGHT',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 17.sp,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '27',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 70.sp,
                        height: 1
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PlanetWithText extends StatelessWidget {
  const PlanetWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Planet Name Text
        Positioned(
          right: ScreenUtil().screenWidth / 5.5,
          child: Text(
            'EARTH',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 100.sp,
              color: const Color.fromRGBO(123, 123, 131, 1),
            ),
          ),
        ),

        /// Planet
        Positioned(
          top: 80.h,
          right: ScreenUtil().screenWidth / 7,
          child: Hero(
            tag: 'img_planet',
            child: Container(
              width: 260,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 20,
                    spreadRadius: 20,
                  )
                ],
              ),
              child: Image.asset('assets/img_planets/earth.png'),
            ),
          ),
        ),
      ],
    );
  }
}
