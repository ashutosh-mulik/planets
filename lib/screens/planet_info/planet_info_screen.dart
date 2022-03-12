import 'dart:math';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planets/screens/home/local_widgets/dashed_vertical_line.dart';
import 'package:planets/screens/planet_info/local_widgets/header.dart';
import 'package:planets/screens/planet_info/local_widgets/info_list_item.dart';
import 'package:planets/services/models/characteristics.dart';
import 'package:planets/services/models/planet_model.dart';

import 'local_widgets/fact_list.dart';
import 'local_widgets/planet_with_name.dart';

class PlanetInfoScreen extends StatelessWidget {
  final PlanetModel planetModel;

  const PlanetInfoScreen({Key? key, required this.planetModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(8, 9, 22, 1),
      body: Container(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/space.jpg'), fit: BoxFit.cover)),
        child: SafeArea(
          child: Stack(
            children: [
              /// Main Content
              Positioned.fill(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25.h,
                      ),

                      /// Planet with text
                      SizedBox(
                        height: planetModel.planetName == 'saturn' ? 200.h : 320.h,
                        child: PlanetWithText(
                          planetName: planetModel.planetName,
                          planetAsset: planetModel.infoAsset,
                        ),
                      ),

                      /// Basic info cards
                      SizedBox(
                        height: 140.h,
                        child: DelayedDisplay(
                          delay: const Duration(milliseconds: 500),
                          slidingBeginOffset: const Offset(1, 0),
                          child: ListView(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(
                                width: 40.w,
                              ),
                              for(Characteristics char in planetModel.characteristics) ...[
                                InfoListItem(
                                  title: char.title,
                                  value: char.value,
                                  asset: char.asset,
                                  unit: char.unit,
                                ),
                              ]
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),

                      /// Header planet stats
                      const Header(
                        title: 'PLANET STATS',
                      ),
                      SizedBox(
                        height: 10.h,
                      ),

                      /// Planet stats info row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 15.w,
                          ),

                          /// Day length text
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'DAY',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 5.h,
                                    ),
                                    Text(
                                      'LENGTH',
                                      style: TextStyle(color: Colors.grey.withOpacity(0.4)),
                                    ),
                                  ],
                                ),
                                DelayedDisplay(
                                  delay: const Duration(milliseconds: 500),
                                  child: Text(
                                    planetModel.dayLength.toUpperCase(),
                                    style: TextStyle(color: Colors.white, fontSize: 40.sp, height: 1.h),
                                  ),
                                ),
                                Text(
                                  'EARTH\nDAYS'.toUpperCase(),
                                  style: TextStyle(color: Colors.grey.withOpacity(0.4)),
                                ),
                              ],
                            ),
                          ),

                          /// Vertical dotted divider line
                          CustomPaint(
                            size: Size(1.w, 100.h),
                            painter: DashedLineVerticalPainter(),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),

                          /// Year length text
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Orbital'.toUpperCase(),
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 5.h,
                                    ),
                                    Text(
                                      'period'.toUpperCase(),
                                      style: TextStyle(color: Colors.grey.withOpacity(0.4)),
                                    ),
                                  ],
                                ),
                                DelayedDisplay(
                                  delay: const Duration(milliseconds: 500),
                                  child: Text(
                                    planetModel.orbitalPeriod.toUpperCase(),
                                    style: TextStyle(color: Colors.white, fontSize: 40.sp, height: 1.h),
                                  ),
                                ),
                                Text(
                                  'EARTH\nDAYS'.toUpperCase(),
                                  style: TextStyle(color: Colors.grey.withOpacity(0.4)),
                                ),
                              ],
                            ),
                          ),

                          /// Vertical dotted divider line
                          CustomPaint(
                            size: Size(1.w, 100.h),
                            painter: DashedLineVerticalPainter(),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),

                          /// Moons Text
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  'MOONS',
                                  style: TextStyle(color: Colors.white),
                                ),
                                DelayedDisplay(
                                  delay: const Duration(milliseconds: 500),
                                  child: Text(
                                    planetModel.moons.toUpperCase(),
                                    style: TextStyle(color: Colors.white, fontSize: 40.sp, height: 1.h),
                                  ),
                                ),
                                Text(
                                  '--\n',
                                  style: TextStyle(color: Colors.grey.withOpacity(0.4)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),

                      /// Header fun facts
                      const Header(
                        title: 'FUN FACTS',
                      ),

                      /// Facts list
                      SizedBox(
                        height: 250.h,
                        child: FactsList(
                          factsList: planetModel.facts,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ),

              /// Back Button
              Positioned.fill(
                child: Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Hero(
                      tag: 'btn_more',
                      child: Container(
                        height: 40.h,
                        width: 47.w,
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



