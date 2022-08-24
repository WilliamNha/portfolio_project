import 'package:flutter/material.dart';
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
  final homeKey = GlobalKey();
  final educationKey = GlobalKey();
  final skillKey = GlobalKey();

  final footerKey = GlobalKey();
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
              // title: Text(
              //   "${_scrollPosition}",
              //   style: TextStyle(color: Colors.red),
              // ),
              iconTheme: const IconThemeData(color: Colors.black),
              backgroundColor: Colors.transparent,
              elevation: 0,
              // elevation: 1,
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 50),
              child: AppBarCustom(
                onHomeTap: () {
                  _scrollController.position.ensureVisible(
                    homeKey.currentContext!.findRenderObject()!,
                    alignment:
                        0.1, // How far into view the item should be scrolled (between 0 and 1).
                    duration: const Duration(seconds: 1),
                  );
                },
                onEducationTap: () {
                  _scrollController.position.ensureVisible(
                    educationKey.currentContext!.findRenderObject()!,
                    alignment:
                        0.1, // How far into view the item should be scrolled (between 0 and 1).
                    duration: const Duration(seconds: 1),
                  );
                },
                onSkillTap: () {
                  _scrollController.position.ensureVisible(
                    skillKey.currentContext!.findRenderObject()!,
                    alignment:
                        0.1, // How far into view the item should be scrolled (between 0 and 1).
                    duration: const Duration(seconds: 1),
                  );
                },
                onContactTap: () {
                  _scrollController.position.ensureVisible(
                    footerKey.currentContext!.findRenderObject()!,
                    alignment:
                        0.1, // How far into view the item should be scrolled (between 0 and 1).
                    duration: const Duration(seconds: 1),
                  );
                },
                opacity: _opacity,
              ),
            ),
      extendBodyBehindAppBar: true,
      drawer: MenuDrawer(
        onHomeTap: () {
          _scrollController.position.ensureVisible(
            homeKey.currentContext!.findRenderObject()!,
            alignment:
                0.1, // How far into view the item should be scrolled (between 0 and 1).
            duration: const Duration(seconds: 1),
          );
        },
        onContactTap: () {
          _scrollController.position.ensureVisible(
            footerKey.currentContext!.findRenderObject()!,
            alignment:
                0.1, // How far into view the item should be scrolled (between 0 and 1).
            duration: const Duration(seconds: 1),
          );
        },
        onEducationTap: () {
          _scrollController.position.ensureVisible(
            educationKey.currentContext!.findRenderObject()!,
            alignment:
                0.1, // How far into view the item should be scrolled (between 0 and 1).
            duration: const Duration(seconds: 1),
          );
        },
        onSkillTap: () {
          _scrollController.position.ensureVisible(
            skillKey.currentContext!.findRenderObject()!,
            alignment:
                0, // How far into view the item should be scrolled (between 0 and 1).
            duration: const Duration(seconds: 1),
          );
        },
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutMeSection(
              key: homeKey,
            ),
            EducationSection(
              key: educationKey,
            ),
            SkillSection(
              key: skillKey,
            ),
            const QuoteSection(),
            FooterSection(
              key: footerKey,
            ),
          ],
        ),
      ),
    );
  }
}
