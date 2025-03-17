import 'package:flutter/material.dart';
import 'package:portfolio/DesktopLayout/Pages/landingPage.dart';
import 'package:portfolio/responsive_Layout.dart';
import 'package:portfolio/test.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        desktopBody: SplashScreenPage(),
        mobileBody: MobileBody(),
      ),
    );
  }
}
