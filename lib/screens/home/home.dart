import 'dart:math';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:planets/screens/constansts.dart';
import 'package:planets/screens/home/local_widgets/top_circle_anim.dart';
import 'package:planets/screens/planet_info/planet_info_screen.dart';
import 'package:planets/services/models/planet_model.dart';
import 'package:planets/services/planet_service.dart';
import 'package:url_launcher/url_launcher.dart';

import 'local_widgets/dashed_vertical_line.dart';
import 'local_widgets/heading_text.dart';
import 'local_widgets/planet.dart';
import 'local_widgets/sub_heading_text.dart';
import 'local_widgets/temperature_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<PlanetModel> planets = PlanetService().getPlanets();

  List<Planet> planetWidgets = [];
  late Planet currentPlanet;

  List<HeadingText> headerWidgets = [];
  late HeadingText currentHeading;

  List<SubHeadingText> subHeadingWidgets = [];
  late SubHeadingText currentSubHeading;

  List<TemperatureText> tempAtDayWidgets = [];
  late TemperatureText currentTemAtDay;

  List<TemperatureText> tempAtNightWidgets = [];
  late TemperatureText currentTempAtNight;

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < planets.length; i++) {
      /// Add planets
      planetWidgets.add(
        Planet(
          url: planets[i].homeAsset,
          key: ValueKey(i),
        ),
      );

      /// Add Headings
      headerWidgets.add(
        HeadingText(
          text: planets[i].planetName,
          key: ValueKey(i),
        ),
      );

      /// Add SubHeadings
      subHeadingWidgets.add(
        SubHeadingText(
          subheading: planets[i].homeSubHeading,
          key: ValueKey(i),
        ),
      );

      /// Add temp at day
      tempAtDayWidgets.add(
        TemperatureText(
          text: planets[i].tempDay,
          key: ValueKey(i),
        ),
      );

      /// Add temp at night
      tempAtNightWidgets.add(
        TemperatureText(
          text: planets[i].tempNight,
          key: ValueKey(i),
        ),
      );
    }

    currentPlanet = planetWidgets[0];
    currentHeading = headerWidgets[0];
    currentSubHeading = subHeadingWidgets[0];
    currentTemAtDay = tempAtDayWidgets[0];
    currentTempAtNight = tempAtNightWidgets[0];
  }

  next() {
    if (index == (planetWidgets.length - 1)) {
      index = -1;
    }

    index++;

    /// Next Planet
    Planet planet = planetWidgets[index];
    planet.offset = const Offset(1, 0);
    currentPlanet = planet;

    /// Next Heading
    HeadingText headingText = headerWidgets[index];
    headingText.offset = const Offset(1, 0);
    currentHeading = headingText;

    /// Next Sub Heading
    SubHeadingText subHeadingText = subHeadingWidgets[index];
    subHeadingText.offset = const Offset(1, 0);
    currentSubHeading = subHeadingText;

    currentTemAtDay = tempAtDayWidgets[index];
    currentTempAtNight = tempAtNightWidgets[index];
  }

  previous() {
    if (index == 0) {
      index = planets.length;
    }

    index--;

    /// Previous Planet
    Planet planet = planetWidgets[index];
    planet.offset = const Offset(-1, 0);
    currentPlanet = planet;

    /// Previous Heading
    HeadingText headingText = headerWidgets[index];
    headingText.offset = const Offset(-1, 0);
    currentHeading = headingText;

    /// Previous Sub Heading
    SubHeadingText subHeadingText = subHeadingWidgets[index];
    subHeadingText.offset = const Offset(-1, 0);
    currentSubHeading = subHeadingText;

    currentTemAtDay = tempAtDayWidgets[index];
    currentTempAtNight = tempAtNightWidgets[index];
  }

  @override
  Widget build(BuildContext context) {
    String? swipeDirection;
    var box = GetStorage();
    if (box.read('isFirstTime') == null) {
      Future.delayed(Duration.zero, () {
        bottomSheet();
      });
      box.write('isFirstTime', false);
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onPanUpdate: (update) {
          swipeDirection = update.delta.dx < 0 ? 'left' : 'right';
        },
        onPanEnd: (details) {
          if (swipeDirection == null) {
            return;
          }
          if (swipeDirection == 'left') {
            setState(() {
              next();
            });
          }
          if (swipeDirection == 'right') {
            setState(() {
              previous();
            });
          }
        },
        child: Stack(
          children: [
            /// Planet
            Positioned.fill(
              top: 410.h,
              child: AnimatedSwitcher(
                duration: Duration.zero,
                child: currentPlanet,
              ),
            ),

            /// Space
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/home_space.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),

            /// Sub Heading
            Positioned.fill(
              top: (ScreenUtil().screenHeight / 2) * 0.70,
              child: Align(
                alignment: AlignmentDirectional.topCenter,
                child: AnimatedSwitcher(
                  duration: Duration.zero,
                  child: currentSubHeading,
                ),
              ),
            ),

            /// Heading
            Positioned.fill(
              top: (ScreenUtil().screenHeight / 2) * 0.35,
              child: Align(
                alignment: AlignmentDirectional.topCenter,
                child: AnimatedSwitcher(
                  duration: Duration.zero,
                  child: currentHeading,
                ),
              ),
            ),

            /// Overlay
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

            /// Top Rotating Circles
            Positioned(
              left: ScreenUtil().screenWidth / 2,
              top: 80.h,
              child: GestureDetector(
                onTap: () => bottomSheet(),
                child: const TopCircleAnim(),
              ),
            ),

            /// Bottom Row
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  /// Horizontal divider line
                  Divider(
                    height: 1,
                    color: Colors.white.withOpacity(0.5),
                  ),

                  /// Temperature row
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: [
                        /// Text Day
                        Text(
                          'AT\nDAY',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 15.sp),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        AnimatedSwitcher(
                          duration: Duration.zero,
                          child: currentTemAtDay,
                        ),
                        SizedBox(
                          width: 25.w,
                        ),

                        /// Vertical dotted divider line
                        CustomPaint(
                          size: Size(1, 50.h),
                          painter: DashedLineVerticalPainter(),
                        ),
                        SizedBox(
                          width: 25.w,
                        ),

                        /// Text Night
                        Text(
                          'AT\nNIGHT',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 15.sp),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        AnimatedSwitcher(
                          duration: Duration.zero,
                          child: currentTempAtNight,
                        ),

                        /// Button More
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                        transitionDuration: const Duration(milliseconds: 900),
                                        pageBuilder: (context, animation, secondaryAnimation) {
                                          return PlanetInfoScreen(
                                            planetModel: planets[index],
                                          );
                                        }),
                                  );
                                },
                                child: Hero(
                                  tag: 'btn_more',
                                  child: Container(
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
                                        angle: 270 * pi / 180,
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
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bottomSheet() {
    showFlexibleBottomSheet(
      minHeight: 0,
      initHeight: 0.5,
      maxHeight: 1,
      context: context,
      builder: (context, controller, offset) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            controller: controller,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Hello, Stranger 👋👩‍🚀',
                          style: TextStyle(fontSize: 20.sp),
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                  EasyRichText(
                    info,
                    defaultStyle: TextStyle(
                      fontSize: 18.sp,
                    ),
                    patternList: [
                      EasyRichTextPattern(
                        targetString: EasyRegexPattern.webPattern,
                        urlType: 'web',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18.sp,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
