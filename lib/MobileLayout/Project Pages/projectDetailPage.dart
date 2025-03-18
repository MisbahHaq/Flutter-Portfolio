import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'projects_Page.dart';

class ProjectDetailPage extends StatelessWidget {
  final String ProjectTitle;
  final String ProjectDescription;

  ProjectDetailPage({
    super.key,
    required this.ProjectTitle,
    required this.ProjectDescription,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double titleFontSize = screenWidth > 600 ? 80 : 40;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProjectPage()),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: Text(
                        ProjectTitle,
                        style: GoogleFonts.poppins(
                          fontSize: titleFontSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    ProjectDescription,
                    style: GoogleFonts.poppins(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
