import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoListItem extends StatelessWidget {
  final String asset;
  final String title;
  final String value;
  final String unit;

  const InfoListItem({
    Key? key,
    required this.asset,
    required this.title,
    required this.value,
    required this.unit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125.w,
      margin: EdgeInsets.only(left: 20.w),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(36, 36, 47, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            asset,
            width: 25.w,
            color: Colors.white.withOpacity(0.5),
          ),
          SizedBox(
            height: 10.h,
          ),
          AutoSizeText(
            title.toUpperCase(),
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value.toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 60.sp, height: 1),
              ),
              SizedBox(
                width: 5.w,
              ),
              AutoSizeText(
                unit.toUpperCase(),
                style: const TextStyle(color: Colors.white, height: 1),
              ),
            ],
          )
        ],
      ),
    );
  }
}
