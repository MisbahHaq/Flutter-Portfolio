import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/DesktopLayout/Constants/WidgetSupport.dart';
import 'package:portfolio/DesktopLayout/Pages/aboutPage.dart';
import 'package:portfolio/DesktopLayout/Pages/contactPage.dart';
import 'package:portfolio/DesktopLayout/Pages/works.dart';
import 'package:portfolio/DesktopLayout/Sections/firstSection.dart';
import 'package:portfolio/DesktopLayout/Sections/secondSection.dart';
import 'package:portfolio/DesktopLayout/Sections/thirdSection.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    _navigateToLandingPage();
  }

  void _navigateToLandingPage() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LandingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.flutter_dash, color: Colors.white, size: 100),
            const SizedBox(height: 20),
            Text(
              'Welcome to My Portfolio',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0;

  late AnimationController _animationController;
  late Animation<Offset> _misbahAnimation;
  late Animation<Offset> _haqueAnimation;
  late Animation<Offset> _webDevAnimation;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _misbahAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    _haqueAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    _webDevAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    setState(() {
      _scrollOffset = _scrollController.offset;
    });
  }

  void _showFullScreenModal(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LandingPage(),
                            ),
                          );
                        },
                        child: Text(
                          "M — H",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 50, top: 25),
                          child: Text(
                            "CLOSE",
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const Spacer(),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Works()),
                        );
                      },
                      child: const MenuItem(title: "WORKS"),
                    ),
                    const DividerLine(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutPage()),
                        );
                      },
                      child: const MenuItem(title: "ABOUT"),
                    ),
                    const DividerLine(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContactPage(),
                          ),
                        );
                      },
                      child: const MenuItem(title: "CONTACT"),
                    ),
                  ],
                ),

                const Spacer(),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "MADE WITH FLUTTER",
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "INSTAGRAM",
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 246, 241, 1),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        color: _scrollOffset > 1500 ? Colors.black : Colors.transparent,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          controller: _scrollController,
          scrollDirection: Axis.vertical,
          child: LayoutBuilder(
            builder: (context, constraints) {
              double screenWidth = constraints.maxWidth;

              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      top: 30,
                      right: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("M — H", style: AppWidget.BigStyle()),
                        GestureDetector(
                          onTap: () => _showFullScreenModal(context),
                          child: Text("MENU", style: AppWidget.BigStyle()),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: SlideTransition(
                          position: _misbahAnimation,
                          child: Text("Misbah", style: AppWidget.HugeStyle()),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: screenWidth > 600 ? 200 : 30,
                            top: 20,
                          ),
                          child: SlideTransition(
                            position: _webDevAnimation,
                            child: Text(
                              "Web & App Development",
                              style: AppWidget.MidStyle(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SlideTransition(
                        position: _haqueAnimation,
                        child: Text("Haque", style: AppWidget.HugeStyle()),
                      ),
                    ],
                  ),

                  const SizedBox(height: 90),
                  const FirstPage(),
                  const SizedBox(height: 260),
                  const SecondPage(),
                  const SizedBox(height: 90),
                  const ThirdPage(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatefulWidget {
  final String title;
  const MenuItem({super.key, required this.title});

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            _isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            _isHovered = false;
          });
        },
        child: Text(
          widget.title,
          style: GoogleFonts.playfairDisplay(
            fontSize: 75,
            color: _isHovered ? Colors.white : Colors.white,
            shadows:
                _isHovered
                    ? [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.white.withOpacity(0.8),
                        offset: Offset(0, 0),
                      ),
                    ]
                    : [],
          ),
        ),
      ),
    );
  }
}

class DividerLine extends StatelessWidget {
  const DividerLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900,
      height: 1,
      color: Colors.white.withOpacity(0.5),
      margin: const EdgeInsets.symmetric(vertical: 8),
    );
  }
}
