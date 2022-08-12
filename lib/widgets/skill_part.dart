import 'package:flutter/material.dart';
import 'package:ui_practice/widgets/custom_linear_percent.dart';
import 'package:ui_practice/widgets/heading_part.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
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
                      Image.asset(
                        'assets/images/programmer.png',
                        width: double.infinity,
                        height: 300,
                        // width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomLinearPercent(
                          leadingText: "Dart",
                          percent: 0.85,
                          percentOnBar: "85%"),
                      const CustomLinearPercent(
                          leadingText: "Flutter",
                          percent: 0.8,
                          percentOnBar: "80%"),
                      const CustomLinearPercent(
                          leadingText: "Python",
                          percent: 0.5,
                          percentOnBar: "50%"),
                      const CustomLinearPercent(
                          leadingText: "Javascript",
                          percent: 0.5,
                          percentOnBar: "50%"),
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
                              percent: 0.70,
                              percentOnBar: "70%"),
                          const CustomLinearPercent(
                              leadingText: "Flutter",
                              percent: 0.8,
                              percentOnBar: "80%"),
                          const CustomLinearPercent(
                              leadingText: "Python",
                              percent: 0.5,
                              percentOnBar: "50%"),
                          const CustomLinearPercent(
                              leadingText: "Javascript",
                              percent: 0.5,
                              percentOnBar: "50%"),
                          // const CustomLinearPercent(
                          //     leadingText: "React",
                          //     percent: 0.4,
                          //     percentOnBar: "40%"),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(
                        left: screenSize.width / 25,
                        // right: screenSize.width / 30,
                      ),
                      alignment: Alignment.center,

                      // color: Colors.yellow,
                      child: Image.asset(
                        'assets/images/programmer.png',
                        width: double.infinity,
                        height: 300,
                        // width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: screenSize.height / 20,
                ),
              ],
            ),
          );
  }
}
