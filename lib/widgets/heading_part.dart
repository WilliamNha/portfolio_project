import 'package:flutter/material.dart';

class HeadingPart extends StatelessWidget {
  HeadingPart({
    Key? key,
    required this.headingText,
    required this.screenSize,
  }) : super(key: key);
  String headingText;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      headingText,
      style: TextStyle(
          fontSize: screenSize.width >= 1000
              ? 30
              : screenSize.width > 800
                  ? 25
                  : 23,
          fontWeight: FontWeight.bold),
    );
  }
}
