import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Module extends StatelessWidget {
  final String projectName;
  final String moduleOne;
  final String moduleImgOne;
  final String module1Name;
  final String moduleTwo;
  final String moduleImgTwo;
  final String module2Name;
  final String moduleThree;
  final String moduleImgThree;
  final String module3Name;

  Module({
    super.key,
    required this.projectName,
    required this.module1Name,
    required this.moduleImgOne,
    required this.moduleOne,
    required this.module2Name,
    required this.moduleImgTwo,
    required this.moduleTwo,
    required this.module3Name,
    required this.moduleImgThree,
    required this.moduleThree,
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Center(child: Image.asset(moduleImgOne)),
                  ),
                  SizedBox(
                    height: 10,
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Center(child: Image.asset(moduleImgTwo)),
                  ),
                  SizedBox(
                    height: 10,
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Center(child: Image.asset(moduleImgThree)),
                  ),
                  SizedBox(
                    height: 10,
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
                ],
              ),
            ),
          ),
        ));
  }
}
