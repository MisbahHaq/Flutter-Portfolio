import 'package:Misbah/DesktopLayout/Constants/WidgetSupport.dart';
import 'package:Misbah/DesktopLayout/Pages/contactPage.dart';
import 'package:Misbah/DesktopLayout/Pages/landingPage.dart';
import 'package:Misbah/DesktopLayout/Pages/works.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LandingPage()),
                      );
                    },
                    child: Text("M — H", style: AppWidget.BigStyle()),
                  ),
                  GestureDetector(
                    onTap: () => _showFullScreenModal(context),
                    child: Text("MENU", style: AppWidget.BigStyle()),
                  ),
                ],
              ),
            ),
            SizedBox(height: 250),
            LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Image.asset(
                        "assets/images/dev.jpg",
                        width:
                            constraints.maxWidth > 800
                                ? 500
                                : constraints.maxWidth * 0.6,
                        height: 300,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 20),
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ABOUT",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              width: 550,
                              child: Text(
                                "Founded by two friends with a shared vision, We began as an idea to harness our potential and showcase what we could achieve together.",
                                style: AppWidget.SmallerStyle(),
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              width: 550,
                              child: Text(
                                "Today, it’s a growing agency that brings bold concepts to life through cutting-edge web design and development.",
                                style: AppWidget.SmallerStyle(),
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              width: 550,
                              child: Text(
                                "Our story started with a simple goal: to create websites that don’t just look great but also deliver outstanding functionality and user experiences.",
                                style: AppWidget.SmallerStyle(),
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              width: 550,
                              child: Text(
                                "Every website we build reflects our commitment to quality, attention to detail, and the belief that every client’s story deserves to be told uniquely.",
                                style: AppWidget.SmallerStyle(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 50),
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
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              width:
                                  constraints.maxWidth > 800
                                      ? 600
                                      : constraints.maxWidth * 0.8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "SERVICES",
                                    style: AppWidget.SmallerStyle(),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Freelancing isn’t just a job; it’s our craft. We thrive on collaborating with clients to understand their needs, bringing their ideas to life with precision and creativity. Whether it’s a sleek portfolio, a dynamic e-commerce site, or a complex web application, we’re here to make it happen.",
                                    style: AppWidget.SmallerStyle(),
                                    softWrap: true,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              width:
                                  constraints.maxWidth > 800
                                      ? 300
                                      : constraints.maxWidth * 0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 50),
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

            Container(
              height: 600,
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Colors.black)),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 150),
                    Text("M — H", style: AppWidget.HeroStyle()),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "TIMELESS DESIGN",
                          style: AppWidget.SmallerStyle(),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          " and",
                          style: GoogleFonts.averageSans(
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(" MEMORABLE", style: AppWidget.SmallerStyle()),
                      ],
                    ),
                    Text(
                      "DIGITAL EXPERIENCES.",
                      style: AppWidget.SmallerStyle(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("AIMING", style: AppWidget.SmallerStyle()),
                            Text(" for", style: AppWidget.SmallerStyle()),
                            Text(" BEAUTY,", style: AppWidget.SmallerStyle()),
                            Text(" ROOTED", style: AppWidget.SmallerStyle()),
                            Text(
                              " in",
                              style: GoogleFonts.averageSans(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("SIMPLICITY,", style: AppWidget.SmallerStyle()),
                        Text(" GUIDED", style: AppWidget.SmallerStyle()),
                        Text(
                          " by",
                          style: GoogleFonts.averageSans(
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(" KINDNESS", style: AppWidget.SmallerStyle()),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
