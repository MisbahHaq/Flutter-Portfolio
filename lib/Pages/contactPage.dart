import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Constants/WidgetSupport.dart';
import 'package:portfolio/Pages/aboutPage.dart';
import 'package:portfolio/Pages/landingPage.dart';
import 'package:portfolio/Sections/thirdSection.dart';
import 'package:portfolio/Pages/worksPage.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 300),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("LET'S HAVE A CHAT", style: AppWidget.SmallerStyle()),
                  ],
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("misbahhaque@yahoo.com", style: AppWidget.BigStyle()),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Reach out with your name and your company details–any",
                      textAlign: TextAlign.center,
                      style: AppWidget.SmallerStyle(),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "helpful insights about your project and vision are appreciated.",
                      textAlign: TextAlign.center,
                      style: AppWidget.SmallerStyle(),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "We’d love to connect and help elevate your brand.",
                      textAlign: TextAlign.center,
                      style: AppWidget.SmallerStyle(),
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
                        style: AppWidget.SmallerStyle(),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "linkedin.com/in/misbah-haq",
                        textAlign: TextAlign.center,
                        style: AppWidget.SmallerStyle(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 500),
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
