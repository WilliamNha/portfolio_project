import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_practice/widgets/custom_linear_percent.dart';
import 'package:ui_practice/widgets/heading_part.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return screenSize.width <= 800
        ? Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: screenSize.width / 10, right: screenSize.width / 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenSize.height / 15,
                      ),
                      HeadingPart(
                          screenSize: screenSize, headingText: "Skills"),
                      const SizedBox(
                        height: 20,
                      ),
                      Lottie.asset('assets/images/study.json',
                          width: double.infinity,
                          height: 350,
                          fit: BoxFit.contain),
                      const CustomLinearPercent(
                          leadingText: "Dart",
                          percent: 0.75,
                          percentOnBar: "75%"),
                      const CustomLinearPercent(
                          leadingText: "Flutter",
                          percent: 0.8,
                          percentOnBar: "80%"),
                      const CustomLinearPercent(
                          leadingText: "Python",
                          percent: 0.6,
                          percentOnBar: "60%"),
                      const CustomLinearPercent(
                          leadingText: "Javascript",
                          percent: 0.6,
                          percentOnBar: "60%"),
                      SizedBox(
                        height: screenSize.height / 20,
                      ),
                    ]),
              ),
            ],
          )
        : Padding(
            padding: EdgeInsets.only(
                left: screenSize.width / 10, right: screenSize.width / 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenSize.height / 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          HeadingPart(
                              screenSize: screenSize, headingText: "Skills"),
                          const SizedBox(
                            height: 20,
                          ),
                          const CustomLinearPercent(
                              leadingText: "Dart",
                              percent: 0.75,
                              percentOnBar: "75%"),
                          const CustomLinearPercent(
                              leadingText: "Flutter",
                              percent: 0.8,
                              percentOnBar: "80%"),
                          const CustomLinearPercent(
                              leadingText: "Python",
                              percent: 0.6,
                              percentOnBar: "60%"),
                          const CustomLinearPercent(
                              leadingText: "Javascript",
                              percent: 0.6,
                              percentOnBar: "60%"),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(
                        left: screenSize.width / 15,
                        // right: screenSize.width / 30,
                      ),
                      alignment: Alignment.center,

                      // color: Colors.yellow,
                      child: SvgPicture.asset('assets/svg/programming.svg',
                          width: double.infinity,
                          height: 350,
                          fit: BoxFit.contain),
                    )),
                  ],
                ),
                // SizedBox(
                //   height: screenSize.height / 15,
                // ),
              ],
            ),
          );
  }
}
