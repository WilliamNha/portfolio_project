import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextFlutter extends StatelessWidget {
  const AnimatedTextFlutter({
    this.textSize,
    Key? key,
  }) : super(key: key);
  final double? textSize;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
          fontSize: screenSize.width >= 1000
              ? 17
              : screenSize.width > 470
                  ? 18
                  : 16,
          fontWeight: FontWeight.bold),
      child: Row(
        children: [
          screenSize.width >= 1000
              ? const Text.rich(TextSpan(text: '<', children: [
                  TextSpan(
                    text: "flutter",
                    style: TextStyle(color: Color(0xff44d1fd)),
                  ),
                  TextSpan(text: ">"),
                ]))
              : SizedBox(),
          SizedBox(
            width: screenSize.width >= 1000 ? 5 : 0,
          ),
          // const Text("I build "),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText(
              screenSize.width > 470
                  ? "I build cross-platform mobile app with Flutter."
                  : "I build mobile app with Flutter.",
            ),
          ]),
          const SizedBox(
            width: 5,
          ),
          screenSize.width >= 1000
              ? const Text.rich(TextSpan(text: '</', children: [
                  TextSpan(
                    text: "flutter",
                    style: TextStyle(
                        color: Color(0xff44d1fd),
                        fontWeight: FontWeight.normal),
                  ),
                  TextSpan(text: ">"),
                ]))
              : SizedBox(),
        ],
      ),
    );
  }
}
