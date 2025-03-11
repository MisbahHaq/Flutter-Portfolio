import 'package:flutter/material.dart';
import 'package:portfolio/WidgetSupport.dart';

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
            Text("M——H", style: AppWidget.AlternateHeroStyle()),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "TIMELESS DESIGN",
                  style: AppWidget.AlternateSmallerStyle(),
                ),
                Text(" and", style: AppWidget.AlternateSmallerStyle()),
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
                    Text(
                      "AIMING rooted in",
                      style: AppWidget.AlternateSmallerStyle(),
                    ),
                    Text(" for", style: AppWidget.AlternateSmallerStyle()),
                    Text(" BEAUTY,", style: AppWidget.AlternateSmallerStyle()),
                    Text(" ROOTED", style: AppWidget.AlternateSmallerStyle()),
                    Text(" in", style: AppWidget.AlternateSmallerStyle()),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("SIMPLICITY,", style: AppWidget.AlternateSmallerStyle()),
                Text(" GUIDED", style: AppWidget.AlternateSmallerStyle()),
                Text(" by", style: AppWidget.AlternateSmallerStyle()),
                Text(" KINDNESS", style: AppWidget.AlternateSmallerStyle()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
