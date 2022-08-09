import 'package:flutter/material.dart';
import 'package:ui_practice/const.dart';

class EducationPart extends StatelessWidget {
  const EducationPart({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenSize.width / 10, right: screenSize.width / 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: screenSize.height / 10,
          ),
          Text(
            'Education',
            style: TextStyle(
                fontSize: screenSize.width >= 1000 ? 30 : 25,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenSize.height / 20,
          ),
          //education year row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '2019 - Present',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'This is a sample education and details about it is stated below. This is a sample education and details about it is stated below',
                        style: TextStyle(
                          fontSize: screenSize.width >= 1000 ? 18 : 16,
                          color: textColor.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: screenSize.width >= 1200 ? 40 : 55,
              ),
              Expanded(
                child: Container(
                  // color: Colors.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '2019 - Present',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'This is a sample education and details about it is stated below. This is a sample education and details about it is stated below',
                        style: TextStyle(
                          fontSize: screenSize.width >= 1000 ? 18 : 16,
                          color: textColor.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
