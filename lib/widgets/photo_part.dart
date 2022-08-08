import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class PhotoPart extends StatefulWidget {
  final Size screenSize;
  const PhotoPart({Key? key, required this.screenSize}) : super(key: key);

  @override
  State<PhotoPart> createState() => _PhotoPartState();
}

class _PhotoPartState extends State<PhotoPart> {
  @override
  Widget build(BuildContext context) {
    return widget.screenSize.width < 800
        ? Column(
            children: [],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: widget.screenSize.height / 20,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: widget.screenSize.width / 10,
                    right: widget.screenSize.width / 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        width: widget.screenSize.width >= 1200
                            ? (widget.screenSize.width / 5)
                            : (widget.screenSize.width / 4),
                        height: widget.screenSize.width >= 1200
                            ? (widget.screenSize.width / 5)
                            : (widget.screenSize.width / 4),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: widget.screenSize.width / 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: widget.screenSize.width / 15),
                        child: Text(
                          "Hi! I'm Panha Heng. I have a strong passion for coding and technology. I specialize in Front End and Mobile App Development and my passion is all about building elegant and professional user interfaces and mobile app. I also do brading and identify design such as logo design, letterhead and business card, along with photo editing, image cropping and other graphic design services.",
                          style: TextStyle(
                              fontSize:
                                  widget.screenSize.width >= 1200 ? 25 : 20,
                              height: 2,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: widget.screenSize.height / 10,
              ),
            ],
          );
  }
}
