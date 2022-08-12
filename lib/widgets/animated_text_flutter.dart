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
      style: Theme.of(context)
          .textTheme
          .subtitle1!
          .copyWith(fontSize: screenSize.width >= 1000 ? 18 : textSize ?? 14),
      child: Row(
        children: [
          const Text.rich(TextSpan(text: '<', children: [
            TextSpan(
              text: "flutter",
              style: TextStyle(color: Color(0xff44d1fd)),
            ),
            TextSpan(text: ">"),
          ])),
          const SizedBox(
            width: 5,
          ),
          // const Text("I build "),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText(
              "I build mobile crossplatform app with Flutter.",
            ),
          ]),
          const SizedBox(
            width: 5,
          ),
          const Text.rich(TextSpan(text: '</', children: [
            TextSpan(
              text: "flutter",
              style: TextStyle(
                  color: Color(0xff44d1fd), fontWeight: FontWeight.normal),
            ),
            TextSpan(text: ">"),
          ])),
        ],
      ),
    );
  }
}
