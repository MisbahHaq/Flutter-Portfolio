import 'package:flutter/material.dart';
import 'package:portfolio/Pages/HomePage.dart';
import 'package:portfolio/Pages/about.dart';
import 'package:portfolio/Pages/experience.dart';
import 'package:portfolio/Pages/projects.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const PortfolioApp(),
    );
  }
}

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  final Color navigationBarColor = Colors.white;
  int selectedIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomePage(),
          ExperiencePage(),
          ProjectPage(),
          AboutPage(),
        ],
      ),
      bottomNavigationBar: WaterDropNavBar(
        backgroundColor: navigationBarColor,
        onItemSelected: (int index) {
          setState(() {
            selectedIndex = index;
          });
          pageController.animateToPage(selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            filledIcon: Icons.home_rounded,
            outlinedIcon: Icons.home_outlined,
          ),
          BarItem(
            filledIcon: Icons.explore_rounded,
            outlinedIcon: Icons.explore_outlined,
          ),
          BarItem(
            filledIcon: Icons.handyman_rounded,
            outlinedIcon: Icons.handyman_outlined,
          ),
          BarItem(
            filledIcon: Icons.person_rounded,
            outlinedIcon: Icons.person_outline_rounded,
          ),
        ],
      ),
    );
  }
}
