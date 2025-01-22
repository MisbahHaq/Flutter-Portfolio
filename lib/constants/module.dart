import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Module extends StatelessWidget {
  final String projectName;
  final String moduleOne;
  final String moduleTwo;
  final String moduleThree;
  final String moduleFour;

  Module({
    super.key,
    required this.projectName,
    required this.moduleOne,
    required this.moduleTwo,
    required this.moduleThree,
    required this.moduleFour,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 30, right: 10, left: 70),
            child: Text(
              projectName,
              style: GoogleFonts.poppins(
                color: const Color.fromARGB(255, 59, 59, 61),
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          toolbarHeight: 100,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(37),
            ),
            child: Container(
              padding: const EdgeInsets.all(30),
              color: const Color(0xff009688),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Core Features",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    moduleOne,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "User Engagement",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    moduleTwo,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Analytics & Insights",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    moduleThree,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Content Personalization",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    moduleFour,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
