import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Constants/FontWidgets.dart';
import 'package:portfolio/Constants/WorkCard.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool isHovered = false;
  int? expandedIndex;

  final List<Map<String, String>> workItems = [
    {
      'title': 'CYBERFICTION',
      'subtitle':
          'A simple website built with HTML, CSS, and JavaScript that features a 3D-looking image effect that moves when the user scrolls.',
      'mediaAsset': 'assets/videos/0303.mp4',
    },
    {
      'title': 'ZELT CLONE',
      'subtitle':
          'A fully responsive clone of the Zelt website, built using HTML, CSS, and JavaScript.',
      'mediaAsset': 'assets/videos/0307.mp4',
    },
    {
      'title': 'FOODGO',
      'subtitle': '',
      'mediaAsset': 'assets/videos/foodgo.mp4',
    },
    {
      'title': 'BLINKIT CLONE',
      'subtitle': '',
      'mediaAsset': 'assets/videos/blinkit.mp4',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "WORK",
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 40),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children:
                    workItems.asMap().entries.map((entry) {
                      int index = entry.key; // Get the index
                      Map<String, String> item =
                          entry.value; // Get the item data

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            expandedIndex =
                                (expandedIndex == index) ? null : index;
                          });
                        },
                        child: SizedBox(
                          width:
                              screenWidth < 600
                                  ? screenWidth - 40
                                  : (screenWidth / 2) - 40,
                          child: WorkCard(
                            title: item['title']!,
                            subtitle: item['subtitle']!,
                            videoAsset: item['mediaAsset']!,
                            isExpanded: expandedIndex == index,
                          ),
                        ),
                      );
                    }).toList(),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MouseRegion(
                    onEnter: (_) => setState(() => isHovered = true),
                    onExit: (_) => setState(() => isHovered = false),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      transform:
                          isHovered
                              ? Matrix4.translationValues(0, -10, 0)
                              : Matrix4.identity(),
                      decoration: BoxDecoration(
                        boxShadow:
                            isHovered
                                ? [
                                  BoxShadow(
                                    color: Colors.greenAccent.withOpacity(0.7),
                                    blurRadius: 25,
                                    spreadRadius: 4,
                                  ),
                                ]
                                : [],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Colors.white.withOpacity(0.9),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 20,
                                ),
                                content: ConstrainedBox(
                                  constraints: BoxConstraints(maxWidth: 350),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 20),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "FoodGo",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "November 2022 - August 2023",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Container(
                                        height: 100,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          "FoodGo is a mobile app designed to satisfy your cravings instantly. Order from a wide variety of fast food options—burgers, pizzas, fries, and more—with quick doorstep delivery, bringing convenience and deliciousness right to you.",
                                          style: AppWidget.NavStyle2(context),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "FoodGo",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "November 2022 - August 2023",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Container(
                                        height: 100,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          "FoodGo is a mobile app designed to satisfy your cravings instantly. Order from a wide variety of fast food options—burgers, pizzas, fries, and more—with quick doorstep delivery, bringing convenience and deliciousness right to you.",
                                          style: AppWidget.NavStyle2(context),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "FoodGo",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "November 2022 - August 2023",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        textAlign: TextAlign.center,
                                        "FoodGo is a mobile app designed to satisfy your cravings instantly. Order from a wide variety of fast food options—burgers, pizzas, fries, and more—with quick doorstep delivery, bringing convenience and deliciousness right to you.",
                                        style: AppWidget.NavStyle2(context),
                                      ),
                                      SizedBox(height: 20),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            ClipPath(
                              clipper: RoundedKiteClipper(),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                width: isHovered ? 75 : 70,
                                height: isHovered ? 75 : 70,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent.withOpacity(0.3),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.greenAccent.withOpacity(
                                        0.6,
                                      ),
                                      blurRadius: isHovered ? 30 : 20,
                                      spreadRadius: isHovered ? 7 : 5,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ClipPath(
                              clipper: RoundedKiteClipper(),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                width: isHovered ? 65 : 60,
                                height: isHovered ? 65 : 60,
                                color: Colors.greenAccent.withOpacity(0.6),
                                child: Center(
                                  child: Text(
                                    "+3",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedKiteClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double radius = size.width * 0.2;

    path.moveTo(size.width / 2, 0);

    path.quadraticBezierTo(0, 0, 0, size.height / 2 - radius);
    path.quadraticBezierTo(0, size.height / 2, 0 + radius, size.height / 2);

    path.quadraticBezierTo(0, size.height, size.width / 2, size.height);

    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width,
      size.height / 2 + radius,
    );
    path.quadraticBezierTo(
      size.width,
      size.height / 2,
      size.width - radius,
      size.height / 2,
    );

    path.quadraticBezierTo(size.width, 0, size.width / 2, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
