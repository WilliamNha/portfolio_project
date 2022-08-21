import 'package:flutter/material.dart';
import 'package:ui_practice/const.dart';

class AppBarCustom extends StatefulWidget {
  const AppBarCustom({
    required this.opacity,
    required this.onSkillTap,
    required this.onContactTap,
    required this.onEducationTap,
    required this.onHomeTap,
    Key? key,
  }) : super(key: key);
  final VoidCallback onSkillTap;
  final VoidCallback onHomeTap;
  final VoidCallback onEducationTap;
  final VoidCallback onContactTap;

  final double opacity;
  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

List itemHovered = [false, false, false, false, false];

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: primaryColor.withOpacity(widget.opacity),
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              InkWell(
                onHover: (value) {
                  setState(() {
                    itemHovered[0] = value;
                  });
                },
                onTap: widget.onHomeTap,
                child: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 15,
                    //  screenSize.width >= 1200 ? 16 : 14,
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
                    itemHovered[2] = value;
                  });
                },
                onTap: widget.onEducationTap,
                child: Text(
                  'Education',
                  style: TextStyle(
                    fontSize: 15,
                    // screenSize.width >= 1200 ? 16 : 14,
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
                onTap: widget.onSkillTap,
                child: Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 15,
                    // screenSize.width >= 1200 ? 16 : 14,
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
          SizedBox(
            width: screenSize.width / 50,
          ),
          Column(
            children: [
              InkWell(
                onHover: (value) {
                  setState(() {
                    itemHovered[4] = value;
                  });
                },
                onTap: widget.onContactTap,
                child: Text(
                  'Contact',
                  style: TextStyle(
                    fontSize: 15,
                    // screenSize.width >= 1200 ? 16 : 14,
                    color: textColor,
                    fontWeight:
                        itemHovered[4] ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Visibility(
                  visible: itemHovered[4],
                  child: itemHovered[4]
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
            width: screenSize.width / 25,
          ),
        ],
      ),
    );
  }
}
