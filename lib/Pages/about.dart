import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            "About Me",
            style: GoogleFonts.poppins(
              color: const Color(0xFF3B3B3D),
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
            color: const Color(0xFFC2B2B4),
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
                      color: const Color.fromARGB(255, 59, 59, 61),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
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
                const SizedBox(
                  height: 20,
                ),
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
                const SizedBox(
                  height: 20,
                ),
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
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Hobbies",
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 59, 59, 61),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
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
                SizedBox(
                  height: 20,
                ),
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
                SizedBox(
                  height: 20,
                ),
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
      ),
    );
  }
}
