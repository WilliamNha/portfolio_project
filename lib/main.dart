import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practice/const.dart';
import 'package:ui_practice/screens/home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      darkTheme: ThemeData.dark(),
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
