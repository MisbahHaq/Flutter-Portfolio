import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background to black
      body: Stack(
        children: [
          // Navigation Menu
          Positioned(
            top: 40,
            left: 20,
            child: Text(
              "S — O",
              style: GoogleFonts.playfairDisplay(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),

          // Close Button
          Positioned(
            top: 40,
            right: 20,
            child: Text(
              "CLOSE",
              style: GoogleFonts.playfairDisplay(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),

          // Main Menu Items with Lines
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MenuItem(title: "WORKS"),
                DividerLine(), // Line between items
                MenuItem(title: "ABOUT"),
                DividerLine(), // Line between items
                MenuItem(title: "CONTACT"),
              ],
            ),
          ),

          // Footer
          Positioned(
            bottom: 20,
            left: 20,
            child: Text(
              "© 2025 STUDIO OLIMPO",
              style: GoogleFonts.playfairDisplay(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),

          Positioned(
            bottom: 20,
            right: 20,
            child: Text(
              "INSTAGRAM",
              style: GoogleFonts.playfairDisplay(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Menu Item
class MenuItem extends StatelessWidget {
  final String title;
  const MenuItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        title,
        style: GoogleFonts.playfairDisplay(fontSize: 48, color: Colors.white),
      ),
    );
  }
}

// Horizontal Line
class DividerLine extends StatelessWidget {
  const DividerLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // Adjust width if needed
      height: 1, // Thin line
      color: Colors.white.withOpacity(0.5), // Slightly faded white
      margin: const EdgeInsets.symmetric(vertical: 8),
    );
  }
}
