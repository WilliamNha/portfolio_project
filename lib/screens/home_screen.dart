import 'package:flutter/material.dart';
import 'package:ui_practice/const.dart';
import 'package:ui_practice/widgets/appbar_customn.dart';
import 'package:ui_practice/widgets/education_part.dart';
import 'package:ui_practice/widgets/about_me_section.dart';
import 'package:ui_practice/widgets/footer_section.dart';
import 'package:ui_practice/widgets/menu_drawer.dart';
import 'package:ui_practice/widgets/quote_section.dart';
import 'package:ui_practice/widgets/skill_part.dart';

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
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
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
              title: const Text(
                'Porfolio',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              iconTheme: const IconThemeData(color: Colors.black),
              backgroundColor: primaryColor,
              elevation: 1,
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: AppBarCustom(
                scrollController: _scrollController,
                opacity: _opacity,
              ),
            ),
      extendBodyBehindAppBar: true,
      drawer: MenuDrawer(
        scrollController: _scrollController,
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            AboutMeSection(),
            EducationSection(),
            SkillSection(),
            QuoteSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
