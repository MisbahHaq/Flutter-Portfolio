import 'package:Misbah/DesktopLayout/Constants%20Desktop/WidgetSupport.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 100),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "LET'S HAVE A CHAT",
                  style: AppWidget.AlternateSmallerStyle(),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "misbahhaque@yahoo.com",
                  style: AppWidget.AlternateBigStyle(),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Reach out with your name and your company details–any",
                  textAlign: TextAlign.center,
                  style: AppWidget.AlternateSmallerStyle(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "helpful insights about your project and vision are appreciated.",
                  textAlign: TextAlign.center,
                  style: AppWidget.AlternateSmallerStyle(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "We’d love to connect and help elevate your brand.",
                  textAlign: TextAlign.center,
                  style: AppWidget.AlternateSmallerStyle(),
                ),
              ],
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "PHONE +92 331 3506 665",
                    textAlign: TextAlign.center,
                    style: AppWidget.AlternateSmallerStyle(),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "linkedin.com/in/misbah-haq",
                    textAlign: TextAlign.center,
                    style: AppWidget.AlternateSmallerStyle(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
