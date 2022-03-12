import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanetWithText extends StatelessWidget {
  final String planetName;
  final String planetAsset;

  const PlanetWithText({Key? key, required this.planetName, required this.planetAsset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Planet Name Text
        Positioned.fill(
          child: DelayedDisplay(
            delay: const Duration(milliseconds: 500),
            slidingBeginOffset: const Offset(0, 0),
            child: Text(
              planetName.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 110.sp,
                color: const Color.fromRGBO(123, 123, 140, 1),
              ),
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
              child: Image.asset(planetAsset),
            ),
          ),
        ),
      ],
    );
  }
}
