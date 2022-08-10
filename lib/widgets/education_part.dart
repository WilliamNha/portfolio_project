import 'package:flutter/material.dart';
import 'package:ui_practice/const.dart';
import 'package:ui_practice/widgets/education_year_part.dart';
import 'package:ui_practice/widgets/heading_part.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(
            left: screenSize.width / 10, right: screenSize.width / 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: screenSize.height / 15,
            ),
            HeadingPart(screenSize: screenSize, headingText: "Education"),
            SizedBox(
              height: screenSize.height / 20,
            ),
            //education year row
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                EducationYearPart(
                    screenSize: screenSize,
                    yearTitle: "2019 - Present",
                    details:
                        "This is a sample education and details about it is stated below. This is a sample education and details about it is stated below"),
                SizedBox(
                  width: screenSize.width >= 1200 ? 40 : 55,
                ),
                EducationYearPart(
                    screenSize: screenSize,
                    yearTitle: "2019 - Present",
                    details:
                        "This is a sample education and details about it is stated below. This is a sample education and details about it is stated below"),
              ],
            ),
            SizedBox(
              height: screenSize.height / 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                EducationYearPart(
                    screenSize: screenSize,
                    yearTitle: "2019 - Present",
                    details:
                        "This is a sample education and details about it is stated below. This is a sample education and details about it is stated below"),
                SizedBox(
                  width: screenSize.width >= 1200 ? 40 : 55,
                ),
                EducationYearPart(
                    screenSize: screenSize,
                    yearTitle: "2019 - Present",
                    details:
                        "This is a sample education and details about it is stated below. This is a sample education and details about it is stated below"),
              ],
            ),
            SizedBox(
              height: screenSize.height / 15,
            ),
          ],
        ),
      ),
    );
  }
}
