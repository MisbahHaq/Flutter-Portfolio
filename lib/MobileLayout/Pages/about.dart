import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPageMob extends StatelessWidget {
  const AboutPageMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "About Me",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF3B3B3D),
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(37),
              ),
              child: Container(
                padding: const EdgeInsets.all(30),
                color: Color(0xff0c2948),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/m.jpg'),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "I'm a tech enthusiast and aspiring full-stack developer with a passion for creating innovative solutions. From building apps like a feature-rich banking platform to crafting e-commerce websites, I thrive on turning ideas into reality. I’m constantly learning, growing, and exploring opportunities to excel in the tech world.",
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 45),
                    Center(
                      child: Text(
                        "Get In Touch With Me",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Email",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "misbahhaque@yahoo",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Github",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "MisbahHaq",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Linkedin",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "MisbahHaq",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Hobbies",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 28),
                    Container(
                      width: 110,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Gaming",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Book Reading",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 170,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Sketching & Art",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
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
