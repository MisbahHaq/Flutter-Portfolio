import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Module extends StatelessWidget {
  final String projectName;
  final String moduleOne;
  final String module1Name;
  final String moduleTwo;
  final String module2Name;
  final String moduleThree;
  final String module3Name;
  final String moduleFour;
  final String module4Name;

  Module({
    super.key,
    required this.projectName,
    required this.module1Name,
    required this.moduleOne,
    required this.module2Name,
    required this.moduleTwo,
    required this.module3Name,
    required this.moduleThree,
    required this.module4Name,
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
                    module1Name,
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
                    module2Name,
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
                    module3Name,
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
                    module4Name,
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
