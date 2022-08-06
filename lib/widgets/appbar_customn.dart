import 'package:flutter/material.dart';
import 'package:ui_practice/const.dart';

class AppBarCustom extends StatefulWidget {
  final Size screenSize;
  const AppBarCustom({
    required this.screenSize,
    Key? key,
  }) : super(key: key);

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

List itemHovered = [false, false, false, false];

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: widget.screenSize.width / 3,
          ),
          SizedBox(
            width: widget.screenSize.width / 3,
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
                    fontSize: 16,
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
                  child: Container(
                    height: 2,
                    width: 16,
                    color: textColor,
                  )),
            ],
          ),
          SizedBox(
            width: widget.screenSize.width / 50,
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
                    fontSize: 16,
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
                  child: Container(
                    height: 2,
                    width: 20,
                    color: textColor,
                  )),
            ],
          ),
          SizedBox(
            width: widget.screenSize.width / 50,
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
                    fontSize: 16,
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
                  child: Container(
                    height: 2,
                    width: 20,
                    color: textColor,
                  )),
            ],
          ),
          SizedBox(
            width: widget.screenSize.width / 50,
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
                    fontSize: 16,
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
                  child: Container(
                    height: 2,
                    width: 20,
                    color: textColor,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
