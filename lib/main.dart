import 'package:flutter/material.dart';
import 'package:portfolio/Constants/SplashScreen.dart';
import 'package:portfolio/Desktop%20Pages/FirstPage.dart';
import 'package:portfolio/Desktop%20Pages/HomePage.dart';
import 'package:portfolio/Desktop%20Pages/SecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
