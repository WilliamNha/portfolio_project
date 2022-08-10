import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:ui_practice/widgets/heading_part.dart';

class PhotoSection extends StatefulWidget {
  final Size screenSize;
  const PhotoSection({Key? key, required this.screenSize}) : super(key: key);

  @override
  State<PhotoSection> createState() => _PhotoSectionState();
}

class _PhotoSectionState extends State<PhotoSection> {
  @override
  Widget build(BuildContext context) {
    return widget.screenSize.width < 800
        //tablet and mobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: widget.screenSize.height / 15,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: widget.screenSize.width / 6,
                    right: widget.screenSize.width / 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/profile.jpg',
                    width: widget.screenSize.width / 1.4,
                    height: widget.screenSize.width / 1.6,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: widget.screenSize.height / 15,
              ),
              Padding(
                  padding: EdgeInsets.only(
                      left: widget.screenSize.width / 10,
                      right: widget.screenSize.width / 10),
                  child: HeadingPart(
                    screenSize: widget.screenSize,
                    headingText: "About Me",
                  )),
              SizedBox(
                height: widget.screenSize.height / 20,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: widget.screenSize.width / 10,
                    right: widget.screenSize.width / 10),
                child: Text(
                  "Hi! I'm Panha Heng. I have a strong passion for coding and technology. I specialize in Front End and Mobile App Development and my passion is all about building elegant and professional user interfaces and mobile app. I also do brading and identify design such as logo design, letterhead and business card, along with photo editing, image cropping and other graphic design services.",
                  style: TextStyle(
                    height: 2,
                    fontSize: 18,
                  ),
                ),
              )
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: widget.screenSize.height / 5,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: widget.screenSize.width / 8,
                  right: widget.screenSize.width / 12,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        width: widget.screenSize.width >= 1000
                            ? (widget.screenSize.width / 5)
                            : (widget.screenSize.width / 4),
                        height: widget.screenSize.width >= 1000
                            ? (widget.screenSize.width / 5)
                            : (widget.screenSize.width / 4),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: widget.screenSize.width / 15,
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: widget.screenSize.width / 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About Me",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      widget.screenSize.width >= 1000 ? 30 : 25,
                                  height: 2),
                            ),
                            SizedBox(
                              height: widget.screenSize.height / 50,
                            ),
                            Text(
                              "Hi! I'm Panha Heng. I have a strong passion for coding and technology. I specialize in Front End and Mobile App Development and my passion is all about building elegant and professional user interfaces and mobile app. I also do brading and identify design such as logo design, letterhead and business card, along with photo editing, image cropping and other graphic design services.",
                              style: TextStyle(
                                fontSize:
                                    widget.screenSize.width >= 1000 ? 20 : 18,
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
                height: widget.screenSize.height / 15,
              ),
            ],
          );
  }
}
