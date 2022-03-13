import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FactsList extends StatefulWidget {
  final List<String> factsList;
  const FactsList({Key? key, required this.factsList}) : super(key: key);

  @override
  State<FactsList> createState() => _FactsListState();
}

class _FactsListState extends State<FactsList> {
  int selected = 0;
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Content List
        Positioned.fill(
          child: CarouselSlider(
            carouselController: carouselController,
            options: CarouselOptions(
                height: 250.h,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 10),
                onPageChanged: (index, reason) {
                  setState(() {
                    selected = index;
                  });
                }),
            items: List.generate(
              widget.factsList.length,
              (index) => FactItem(
                index: index + 1,
                text: widget.factsList[index],
              ),
            ),
          ),
        ),

        /// Indicators
        Positioned.fill(
          child: Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.factsList
                  .map(
                    (e) => Container(
                      width: 10.w,
                      height: 10.h,
                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                        color: selected == widget.factsList.indexOf(e) ? Colors.white : Colors.transparent,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        )
      ],
    );
  }
}

class StrokedText extends StatelessWidget {
  final String text;
  final double fontSize;

  const StrokedText({Key? key, required this.text, required this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        /// Stroked text as border.
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: fontSize,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 4
              ..color = const Color.fromRGBO(8, 9, 22, 0.3),
          ),
        ),

        /// Solid text as fill.
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class FactItem extends StatelessWidget {
  final int index;
  final String text;

  const FactItem({Key? key, required this.text, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.h,
      width: ScreenUtil().screenWidth,
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                index.toString().padLeft(2, '0'),
                style: TextStyle(color: const Color.fromRGBO(91, 88, 101, 0.5), fontSize: 180.sp),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: StrokedText(
                  text: text,
                  fontSize: 20.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
