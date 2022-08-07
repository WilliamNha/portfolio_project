import 'package:flutter/material.dart';

class IntroductionPart extends StatelessWidget {
  const IntroductionPart({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        screenSize.width < 800
            ?
            //for mobile
            Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: RichText(
                      text: const TextSpan(
                          text: 'I am a passionate ',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 30,
                            height: 1.2,
                          ),
                          children: [
                            TextSpan(
                                text: "front end developer ",
                                style: TextStyle(
                                    height: 1.2,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30)),
                            TextSpan(
                                text: "and ",
                                style: TextStyle(
                                    height: 1.2,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 30)),
                            TextSpan(
                                text: "ui/ux designer ",
                                style: TextStyle(
                                    height: 1.2,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30)),
                            TextSpan(
                                text: "with a keen eye for details.",
                                style: TextStyle(
                                    height: 1.2,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 30))
                          ]),
                    ),
                  ),
                ],
              )
            : //for web
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenSize.width / 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width / 5,
                        bottom: screenSize.height / 50),
                    child: const Text(
                      'I am a passionate',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width / 5,
                        bottom: screenSize.height / 50),
                    child: const Text(
                      'front-end developer',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width / 5,
                        bottom: screenSize.height / 50),
                    child: const Text(
                      'and ui/ux designer with a keen',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width / 5,
                        bottom: screenSize.height / 50),
                    child: const Text(
                      'eye for details.',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
