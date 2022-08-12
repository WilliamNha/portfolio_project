import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ui_practice/const.dart';

class AppBarCustom extends StatefulWidget {
  final double opacity;
  const AppBarCustom({
    required this.opacity,
    Key? key,
  }) : super(key: key);

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

List itemHovered = [false, false, false, false];

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: primaryColor.withOpacity(widget.opacity),
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: screenSize.width / 3,
          ),
          SizedBox(
            width: screenSize.width / 3,
          ),
          Column(
            children: [
              InkWell(
                onHover: (value) {
                  setState(() {
                    itemHovered[0] = value;
                  });
                },
                onTap: () {},
                child: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: screenSize.width >= 1200 ? 16 : 14,
                    color: textColor,
                    fontWeight:
                        itemHovered[0] ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Visibility(
                  visible: itemHovered[0],
                  child: itemHovered[0]
                      ? Container(
                          height: 2,
                          width: 16,
                          color: textColor,
                        )
                      : Container(
                          height: 2,
                          width: 16,
                          color: Colors.white,
                        )),
            ],
          ),
          SizedBox(
            width: screenSize.width / 50,
          ),
          Column(
            children: [
              InkWell(
                onHover: (value) {
                  setState(() {
                    itemHovered[1] = value;
                  });
                },
                onTap: () {},
                child: Text(
                  'About',
                  style: TextStyle(
                    fontSize: screenSize.width >= 1200 ? 16 : 14,
                    color: textColor,
                    fontWeight:
                        itemHovered[1] ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Visibility(
                  visible: itemHovered[1],
                  child: itemHovered[1]
                      ? Container(
                          height: 2,
                          width: 16,
                          color: textColor,
                        )
                      : Container(
                          height: 2,
                          width: 16,
                          color: Colors.white,
                        )),
            ],
          ),
          SizedBox(
            width: screenSize.width / 50,
          ),
          Column(
            children: [
              InkWell(
                onHover: (value) {
                  setState(() {
                    itemHovered[2] = value;
                  });
                },
                onTap: () {},
                child: Text(
                  'Works',
                  style: TextStyle(
                    fontSize: screenSize.width >= 1200 ? 16 : 14,
                    color: textColor,
                    fontWeight:
                        itemHovered[2] ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Visibility(
                  visible: itemHovered[2],
                  child: itemHovered[2]
                      ? Container(
                          height: 2,
                          width: 16,
                          color: textColor,
                        )
                      : Container(
                          height: 2,
                          width: 16,
                          color: Colors.white,
                        )),
            ],
          ),
          SizedBox(
            width: screenSize.width / 50,
          ),
          Column(
            children: [
              InkWell(
                onHover: (value) {
                  setState(() {
                    itemHovered[3] = value;
                  });
                },
                onTap: () {},
                child: Text(
                  'Contact',
                  style: TextStyle(
                    fontSize: screenSize.width >= 1200 ? 16 : 14,
                    color: textColor,
                    fontWeight:
                        itemHovered[3] ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Visibility(
                  visible: itemHovered[3],
                  child: itemHovered[3]
                      ? Container(
                          height: 2,
                          width: 16,
                          color: textColor,
                        )
                      : Container(
                          height: 2,
                          width: 16,
                          color: Colors.white,
                        )),
            ],
          ),
        ],
      ),
    );
  }
}
