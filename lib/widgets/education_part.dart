import 'package:flutter/material.dart';
import 'package:ui_practice/const.dart';
import 'package:ui_practice/widgets/education_year_part.dart';
import 'package:ui_practice/widgets/heading_part.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
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
                    yearTitle: "ESL Program Level (1-12)",
                    details: "Beltei International Institute (2009 - 2014)"),
                SizedBox(
                  width: screenSize.width >= 1200 ? 40 : 55,
                ),
                EducationYearPart(
                    screenSize: screenSize,
                    yearTitle: "ACE Genreal English Program",
                    details: "Australian Center for Education (2014 - 2016)"),
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
                    yearTitle: "Grade 12 High School Diploma",
                    details: "Beltei International Institute (2012 - 2018)"),
                SizedBox(
                  width: screenSize.width >= 1200 ? 40 : 55,
                ),
                EducationYearPart(
                    screenSize: screenSize,
                    yearTitle: "Bachelor Degree in ICT",
                    details: "Rangsit University (2019 - 2022)"),
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
