import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/WidgetSupport.dart';
import 'package:portfolio/landingPage.dart';
import 'package:portfolio/thirdPage.dart';
import 'package:portfolio/works.dart';

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
                    const MenuItem(title: "ABOUT"),
                    const DividerLine(),
                    const MenuItem(title: "CONTACT"),
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
            Row(children: [Image.asset("assets/images/dev.jpg")]),
          ],
        ),
      ),
    );
  }
}
