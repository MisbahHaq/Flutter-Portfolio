import 'package:Misbah/DesktopLayout/Pages/landingPage.dart';
import 'package:Misbah/HomePage.dart';
import 'package:Misbah/MobileLayout/Pages/landingPageMobile.dart';
import 'package:Misbah/responsive_Layout.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

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
