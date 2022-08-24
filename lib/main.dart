import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practice/const.dart';
import 'package:ui_practice/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PH',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: GoogleFonts.lato().fontFamily,
        textTheme:
            // GoogleFonts.robotoTextTheme()
            GoogleFonts.latoTextTheme().copyWith(
          headline1: const TextStyle(color: textColor),
          headline2: const TextStyle(color: textColor),
          bodyText2: const TextStyle(color: textColor),
          subtitle1: const TextStyle(color: textColor),
        ),
      ),
      home: const HomePage(),
    );
  }
}
