import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/main.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 160, 10),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Hidden()));
                    },
                    child: Container(
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(107),
              ),
              child: Container(
                height: 840,
                padding: const EdgeInsets.all(30),
                color: const Color.fromARGB(255, 247, 160, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "The Location Lab",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "2023 - Present",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Assistant HOD",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/images/quo.png")),
                    Text(
                      "Currently, I work as Assistant to HOD at The Location Lab, My role involves providing administrative, organizational, and operational support to ensure the smooth functioning of the department.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
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
