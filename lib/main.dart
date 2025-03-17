import 'package:flutter/material.dart';
import 'package:portfolio/DesktopLayout/Pages/landingPage.dart';
import 'package:portfolio/HomePage.dart';
import 'package:portfolio/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
