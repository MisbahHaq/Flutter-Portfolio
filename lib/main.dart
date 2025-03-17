import 'package:flutter/material.dart';
import 'package:portfolio/Pages/aboutPage.dart';
import 'package:portfolio/Pages/contactPage.dart';
import 'package:portfolio/Pages/splash.dart';
import 'package:portfolio/Sections/firstSection.dart';
import 'package:portfolio/Pages/landingPage.dart';
import 'package:portfolio/Sections/secondSection.dart';
import 'package:portfolio/Sections/thirdSection.dart';
import 'package:portfolio/Pages/worksPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}
