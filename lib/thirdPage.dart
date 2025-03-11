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
            SizedBox(height: 250),
            Text("M——H", style: AppWidget.AlternateHeroStyle()),
            Text(
              "Timeless design and memorable",
              style: AppWidget.AlternateMidStyle(),
            ),
            Text("digital experiences.", style: AppWidget.AlternateMidStyle()),
            Text(
              "Aiming for beauty, rooted in",
              style: AppWidget.AlternateMidStyle(),
            ),
            Text(
              "simplicity, guided by kindness",
              style: AppWidget.AlternateMidStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
