import 'package:Misbah/DesktopLayout/Pages/landingPage.dart';
import 'package:Misbah/main.dart';
import 'package:Misbah/responsive_Layout.dart';
import 'package:flutter/material.dart';

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
        mobileBody: Hidden(),
      ),
    );
  }
}
