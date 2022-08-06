import 'package:flutter/material.dart';
import 'package:ui_practice/const.dart';
import 'package:ui_practice/widgets/appbar_customn.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          screenSize.width < 800
              ? const SizedBox()
              : PreferredSize(
                  preferredSize: Size(screenSize.width, 70),
                  child: AppBarCustom(
                    screenSize: screenSize,
                  ),
                ),
          SizedBox(
            height: screenSize.width / 10,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenSize.width / 5, bottom: screenSize.height / 50),
            child: Text(
              'I am a passionate',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenSize.width / 5, bottom: screenSize.height / 50),
            child: Text(
              'front-end developer',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenSize.width / 5, bottom: screenSize.height / 50),
            child: Text(
              'and ui/ux designer with a keen',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenSize.width / 5, bottom: screenSize.height / 50),
            child: Text(
              'eye for details.',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
