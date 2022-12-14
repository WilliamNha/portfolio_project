import 'package:flutter/material.dart';
import 'package:ui_practice/const.dart';

class EducationYearPart extends StatelessWidget {
  const EducationYearPart({
    required this.yearTitle,
    required this.details,
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;
  final String yearTitle;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            yearTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: screenSize.width > 800 ? 18 : 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            details,
            style: TextStyle(
              fontSize: screenSize.width > 800 ? 18 : 16,
              // screenSize.width >= 1000 ? 18 : 16,
              color: textColor.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
