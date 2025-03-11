import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget {
  static TextStyle SmallStyle() {
    return GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 19,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static TextStyle AlternateSmallStyle() {
    return GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 19,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static TextStyle AlternateSmallerStyle() {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  static TextStyle MidStyle() {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w200,
      ),
    );
  }

  static TextStyle AlternateMidStyle() {
    return GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w200,
      ),
    );
  }

  static TextStyle BigStyle() {
    return GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static TextStyle HugeStyle() {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 290,
        fontWeight: FontWeight.w200,
      ),
    );
  }

  static TextStyle HeroStyle() {
    return GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  static TextStyle AlternateHeroStyle() {
    return GoogleFonts.playfairDisplay(
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
