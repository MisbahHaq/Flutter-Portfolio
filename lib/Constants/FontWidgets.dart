import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget {
  static TextStyle SmallStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 40
            : // Large screens (desktop)
            screenWidth > 600
            ? 25
            : 19; // Tablets and phones
    return GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static TextStyle SmallStyle3(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 40
            : // Large screens (desktop)
            screenWidth > 600
            ? 25
            : 19; // Tablets and phones
    return GoogleFonts.roboto(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static TextStyle AlternateSmallStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 40
            : // Large screens (desktop)
            screenWidth > 600
            ? 25
            : 19; // Tablets and phones
    return GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static TextStyle AlternateSmallStyle2(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 40
            : // Large screens (desktop)
            screenWidth > 600
            ? 25
            : 19; // Tablets and phones
    return GoogleFonts.roboto(
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static TextStyle AlternateSmallerStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 22
            : // Large screens (desktop)
            screenWidth > 600
            ? 18
            : 15; // Tablets and phones
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  static TextStyle SmallerStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 22
            : // Large screens (desktop)
            screenWidth > 600
            ? 18
            : 15; // Tablets and phones
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static TextStyle MidStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 50
            : // Large screens (desktop)
            screenWidth > 600
            ? 40
            : 30; // Tablets and phones
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: FontWeight.w200,
      ),
    );
  }

  static TextStyle AlternateMidStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 50
            : // Large screens (desktop)
            screenWidth > 600
            ? 40
            : 30; // Tablets and phones
    return GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.w200,
      ),
    );
  }

  static TextStyle AlternateMidStyle2(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 120
            : // Large screens (desktop)
            screenWidth > 600
            ? 90
            : 60; // Tablets and phones
    return GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: FontWeight.w200,
      ),
    );
  }

  static TextStyle BigStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 50
            : // Large screens (desktop)
            screenWidth > 600
            ? 40
            : 30; // Tablets and phones
    return GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static TextStyle AlternateBigStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 50
            : // Large screens (desktop)
            screenWidth > 600
            ? 40
            : 30; // Tablets and phones
    return GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static TextStyle NavStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth > 600 ? 16 : 14; // Tablets and phones
    return GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static TextStyle NavStyle2(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth > 600 ? 12 : 10; // Tablets and phones
    return GoogleFonts.roboto(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  static TextStyle HugeStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 290
            : // Large screens (desktop)
            screenWidth > 600
            ? 150
            : 80; // Tablets and phones
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: FontWeight.w200,
      ),
    );
  }

  static TextStyle HugeStyle2(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 200
            : // Large screens (desktop)
            screenWidth > 600
            ? 100
            : 50; // Tablets and phones
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: FontWeight.w200,
      ),
    );
  }

  static TextStyle AlternateHugeStyle() {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 290,
        fontWeight: FontWeight.w200,
      ),
    );
  }

  static TextStyle HeroStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 50
            : // Large screens (desktop)
            screenWidth > 600
            ? 35
            : 30; // Tablets and phones
    return GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  static TextStyle AlternateHeroStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 60
            : // Large screens (desktop)
            screenWidth > 600
            ? 45
            : 40; // Tablets and phones
    return GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static TextStyle AlternateHeroStyleFinal(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize =
        screenWidth > 1200
            ? 60
            : // Large screens (desktop)
            screenWidth > 600
            ? 45
            : 40; // Tablets and phones
    return GoogleFonts.roboto(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
