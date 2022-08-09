import 'package:flutter/material.dart';

class IntroductionPart extends StatelessWidget {
  const IntroductionPart({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    double fontSizeMobile = 25;
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
                    padding: EdgeInsets.only(
                        left: screenSize.width / 15,
                        right: screenSize.width / 15),
                    child: RichText(
                      text: TextSpan(
                          text: 'I am a passionate ',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: fontSizeMobile,
                            height: 1.5,
                          ),
                          children: [
                            TextSpan(
                                text: "front end developer ",
                                style: TextStyle(
                                    height: 1.5,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontSizeMobile)),
                            TextSpan(
                                text: "and ",
                                style: TextStyle(
                                    height: 1.5,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    fontSize: fontSizeMobile)),
                            TextSpan(
                                text: "ui/ux designer ",
                                style: TextStyle(
                                    height: 1.5,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontSizeMobile)),
                            TextSpan(
                                text: "with a keen eye for details.",
                                style: TextStyle(
                                  height: 1.5,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  fontSize: fontSizeMobile,
                                ))
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
                    child: Text(
                      'I am a passionate',
                      style: TextStyle(
                        fontSize: screenSize.width >= 1000 ? 30 : 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width / 5,
                        bottom: screenSize.height / 50),
                    child: Text(
                      'front-end developer',
                      style: TextStyle(
                        fontSize: screenSize.width >= 1000 ? 30 : 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width / 5,
                        bottom: screenSize.height / 50),
                    child: Text(
                      'and ui/ux designer with a keen',
                      style: TextStyle(
                        fontSize: screenSize.width >= 1000 ? 30 : 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width / 5,
                        bottom: screenSize.height / 50),
                    child: Text(
                      'eye for details.',
                      style: TextStyle(
                        fontSize: screenSize.width >= 1000 ? 30 : 25,
                      ),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
