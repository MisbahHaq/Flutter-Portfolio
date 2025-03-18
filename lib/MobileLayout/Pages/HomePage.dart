import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Text(
                    "Hi There!",
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 59, 59, 61),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "I'm Misbah Haq",
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 59, 59, 61),
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Developer & Software Engineer",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(FontAwesomeIcons.twitter, size: 30),
                      SizedBox(width: 15),
                      Icon(FontAwesomeIcons.instagram, size: 30),
                      SizedBox(width: 15),
                      Icon(FontAwesomeIcons.linkedin, size: 30),
                      SizedBox(width: 15),
                      Icon(FontAwesomeIcons.squareUpwork, size: 30),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Image.asset("assets/images/devv.jpg", height: 250),
            SizedBox(height: 120),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/sw2.gif", width: 90, height: 90),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
