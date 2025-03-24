import 'dart:async';
import 'package:Misbah/DesktopLayout/Constants/WidgetSupport.dart';
import 'package:Misbah/DesktopLayout/Sections/firstPage.dart';
import 'package:Misbah/DesktopLayout/Sections/secondPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            Icon(Icons.flutter_dash_rounded, color: Colors.white, size: 100),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 246, 241, 1),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        color: _scrollOffset > 1800 ? Colors.black : Colors.transparent,
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
                      children: [Text("M — H", style: AppWidget.BigStyle())],
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
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: Colors.black)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 150),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    width:
                                        constraints.maxWidth > 800
                                            ? 600
                                            : constraints.maxWidth * 0.8,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "SERVICES",
                                          style: AppWidget.MidStyle(),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          "Freelancing isn’t just a job; it’s our craft. We thrive on collaborating with clients to understand their needs, bringing their ideas to life with precision and creativity. Whether it’s a sleek portfolio, a dynamic e-commerce site, or a complex web application, we’re here to make it happen.",
                                          style: AppWidget.SmallStyle(),
                                          softWrap: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 30,
                                    ),
                                    width:
                                        constraints.maxWidth > 800
                                            ? 300
                                            : constraints.maxWidth * 0.4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 70),
                                        Text(
                                          "WEB & APP DESIGN",
                                          style: AppWidget.SmallerStyle(),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          "DEVELOPMENT",
                                          style: AppWidget.SmallerStyle(),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          "MARKETTING & SALES",
                                          style: AppWidget.SmallerStyle(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SecondPage(),
                  const SizedBox(height: 90),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 300),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "LET'S HAVE A CHAT",
                                style: AppWidget.AlternateSmallerStyle(),
                              ),
                            ],
                          ),
                          SizedBox(height: 35),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "misbahhaque@yahoo.com",
                                style: AppWidget.AlternateBigStyle(),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Reach out with your name and your company details–any",
                                textAlign: TextAlign.center,
                                style: AppWidget.AlternateSmallerStyle(),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "helpful insights about your project and vision are appreciated.",
                                textAlign: TextAlign.center,
                                style: AppWidget.AlternateSmallerStyle(),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "We’d love to connect and help elevate your brand.",
                                textAlign: TextAlign.center,
                                style: AppWidget.AlternateSmallerStyle(),
                              ),
                            ],
                          ),
                          SizedBox(height: 90),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "PHONE +92 331 3506 665",
                                  textAlign: TextAlign.center,
                                  style: AppWidget.AlternateSmallerStyle(),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "linkedin.com/in/misbah-haq",
                                  textAlign: TextAlign.center,
                                  style: AppWidget.AlternateSmallerStyle(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
