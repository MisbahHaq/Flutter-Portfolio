import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPageMob extends StatefulWidget {
  const AboutPageMob({super.key});

  @override
  _AboutPageMobState createState() => _AboutPageMobState();
}

class _AboutPageMobState extends State<AboutPageMob> {
  double _opacity = 0.0;
  double _avatarScale = 0.0;

  @override
  void initState() {
    super.initState();
    _triggerAnimations();
  }

  void _triggerAnimations() async {
    await Future.delayed(Duration(milliseconds: 200));
    setState(() {
      _opacity = 1.0;
    });

    await Future.delayed(Duration(milliseconds: 300));
    setState(() {
      _avatarScale = 1.0;
    });
  }

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
                AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity: _opacity,
                  child: Text(
                    "About Me",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF3B3B3D),
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(37),
              ),
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                padding: const EdgeInsets.all(30),
                color: Color(0xff0c2948),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedScale(
                      duration: Duration(seconds: 1),
                      scale: _avatarScale,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/m.jpg'),
                      ),
                    ),
                    const SizedBox(height: 30),
                    AnimatedOpacity(
                      duration: Duration(seconds: 1),
                      opacity: _opacity,
                      child: Text(
                        "I'm a tech enthusiast and aspiring full-stack developer with a passion for creating innovative solutions. From building apps like a feature-rich banking platform to crafting e-commerce websites, I thrive on turning ideas into reality. I’m constantly learning, growing, and exploring opportunities to excel in the tech world.",
                        style: GoogleFonts.poppins(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 45),
                    AnimatedOpacity(
                      duration: Duration(seconds: 1),
                      opacity: _opacity,
                      child: Center(
                        child: Text(
                          "Get In Touch With Me",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    _buildContactRow("Email", "misbahhaque@yahoo"),
                    const SizedBox(height: 20),
                    _buildContactRow("Github", "MisbahHaq"),
                    const SizedBox(height: 20),
                    _buildContactRow("Linkedin", "MisbahHaq"),
                    SizedBox(height: 30),
                    AnimatedOpacity(
                      duration: Duration(seconds: 1),
                      opacity: _opacity,
                      child: Text(
                        "Hobbies",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 28),
                    _buildHobbyButton("Gaming", 110),
                    SizedBox(height: 20),
                    _buildHobbyButton("Book Reading", 150),
                    SizedBox(height: 20),
                    _buildHobbyButton("Sketching & Art", 170),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildHobbyButton(String hobby, double width) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      width: width,
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
          hobby,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
