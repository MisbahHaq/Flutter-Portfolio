import 'package:flutter/material.dart';
import 'package:portfolio/firstPage.dart';
import 'package:portfolio/landingPage.dart';
import 'package:portfolio/secondPage.dart';
import 'package:portfolio/tesst.dart';
import 'package:portfolio/thirdPage.dart';

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
