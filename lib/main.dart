import 'package:Misbah/HomePage.dart';
import 'package:Misbah/MobileLayout/Pages/HomePage.dart';
import 'package:Misbah/MobileLayout/Pages/about.dart';
import 'package:Misbah/MobileLayout/Pages/experience.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'MobileLayout/Project Pages/projects_Page.dart';

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

class Hidden extends StatefulWidget {
  const Hidden({super.key});

  @override
  State<Hidden> createState() => _HiddenState();
}

class _HiddenState extends State<Hidden> {
  List<ScreenHiddenDrawer> _pages = [];

  final myTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.white,
  );

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Home",
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        const MainPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Experience",
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        const ExperiencePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Projects",
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        const ProjectPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "About Me",
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        const AboutPageMob(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      disableAppBarDefault: true,
      backgroundColorMenu: const Color.fromARGB(255, 102, 183, 58),
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 60,
    );
  }
}
