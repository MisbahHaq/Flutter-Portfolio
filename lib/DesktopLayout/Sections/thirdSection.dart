import 'package:Misbah/DesktopLayout/Constants/WidgetSupport.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.white)),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 150),
            Text("M — H", style: AppWidget.AlternateHeroStyle()),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "TIMELESS DESIGN",
                  style: AppWidget.AlternateSmallerStyle(),
                ),
                Text(
                  textAlign: TextAlign.center,
                  " and",
                  style: GoogleFonts.averageSans(
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(" MEMORABLE", style: AppWidget.AlternateSmallerStyle()),
              ],
            ),
            Text(
              "DIGITAL EXPERIENCES.",
              style: AppWidget.AlternateSmallerStyle(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("AIMING", style: AppWidget.AlternateSmallerStyle()),
                    Text(" for", style: AppWidget.AlternateSmallerStyle()),
                    Text(" BEAUTY,", style: AppWidget.AlternateSmallerStyle()),
                    Text(" ROOTED", style: AppWidget.AlternateSmallerStyle()),
                    Text(
                      " in",
                      style: GoogleFonts.averageSans(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("SIMPLICITY,", style: AppWidget.AlternateSmallerStyle()),
                Text(" GUIDED", style: AppWidget.AlternateSmallerStyle()),
                Text(
                  " by",
                  style: GoogleFonts.averageSans(
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(" KINDNESS", style: AppWidget.AlternateSmallerStyle()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
