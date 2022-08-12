import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomLinearPercent extends StatelessWidget {
  const CustomLinearPercent({
    required this.percent,
    required this.leadingText,
    required this.percentOnBar,
    Key? key,
  }) : super(key: key);
  final String leadingText;
  final double percent;
  final String percentOnBar;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 25),
      child: LinearPercentIndicator(
        backgroundColor: Colors.black12,
        onAnimationEnd: () {},
        leading: SizedBox(
          width: 65,
          child: Text(
            leadingText,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        trailing: SizedBox(
          // width: 40,
          child: Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Text(
              percentOnBar,
              style:
                  const TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
            ),
          ),
        ),
        animation: true,
        lineHeight: 20.0,
        animationDuration: 2000,
        percent: percent,
        barRadius: const Radius.circular(16),
        progressColor: const Color(0xff44d1fd),
        // Colors.grey,
      ),
    );
  }
}
