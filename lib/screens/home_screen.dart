import 'package:flutter/material.dart';
import 'package:ui_practice/const.dart';
import 'package:ui_practice/widgets/appbar_customn.dart';
import 'package:ui_practice/widgets/introduction_part.dart';
import 'package:ui_practice/widgets/photo_part.dart';

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
      appBar: screenSize.width < 800
          ? AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: AppBarCustom(
                screenSize: screenSize,
              ),
            ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IntroductionPart(screenSize: screenSize),
            PhotoPart(screenSize: screenSize),
          ],
        ),
      ),
    );
  }
}
