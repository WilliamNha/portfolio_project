import 'package:flutter/material.dart';
import 'package:ui_practice/widgets/animated_text_flutter.dart';
import 'package:ui_practice/widgets/heading_part.dart';

class AboutMeSection extends StatefulWidget {
  const AboutMeSection({
    Key? key,
  }) : super(key: key);

  @override
  State<AboutMeSection> createState() => _AboutMeSectionState();
}

class _AboutMeSectionState extends State<AboutMeSection> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return screenSize.width < 800
        //tablet and mobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: screenSize.height / 7,
              ),
              Padding(
                padding: EdgeInsets.only(
                  //left 4
                  //right 4
                  left: screenSize.width / 5,
                  right: (screenSize.width / 5),
                ),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      width: screenSize.width > 450
                          ? screenSize.width / 2
                          : screenSize.width / 1.4,
                      height: screenSize.width > 450
                          ? (screenSize.width / 2.2)
                          : (screenSize.width / 1.8),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height / 15,
              ),
              Padding(
                  padding: EdgeInsets.only(
                      left: screenSize.width / 10,
                      right: screenSize.width / 10),
                  child: HeadingPart(
                    screenSize: screenSize,
                    headingText: "About Me",
                  )),
              SizedBox(
                height: screenSize.height / 20,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenSize.width / 10, right: screenSize.width / 10),
                child: const Text(
                  "Hi! I'm Panha Heng. I have a strong passion for coding and technology. I specialize in Front End and Mobile App Development and my passion is all about building elegant and professional user interfaces and mobile app. I also do brading and identify design such as logo design, letterhead and business card, along with photo editing, image cropping and other graphic design services.",
                  style: TextStyle(
                    height: 2,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height / 15,
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: screenSize.height / 8,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenSize.width / 10,
                  right: screenSize.width / 12,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        width: screenSize.width >= 1000
                            ? (screenSize.width / 5)
                            : (screenSize.width / 4),
                        height: screenSize.width >= 1000
                            ? (screenSize.width / 5)
                            : (screenSize.width / 4),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width / 15,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: screenSize.width / 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About Me",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenSize.width >= 1000 ? 30 : 25,
                                  height: 2),
                            ),
                            SizedBox(
                              height: screenSize.height / 30,
                            ),
                            const AnimatedTextFlutter(),
                            SizedBox(
                              height: screenSize.height / 30,
                            ),
                            Text(
                              "Hi! I'm Panha Heng. I have a strong passion for coding and technology. I specialize in Front End and Mobile App Development and my passion is all about building elegant and professional user interfaces and mobile app. I also do brading and identify design such as logo design, letterhead and business card, along with photo editing, image cropping and other graphic design services.",
                              style: TextStyle(
                                fontSize: screenSize.width >= 1000 ? 20 : 18,
                                height: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height / 15,
              ),
            ],
          );
  }
}
