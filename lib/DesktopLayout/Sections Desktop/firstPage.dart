import 'package:Misbah/DesktopLayout/Constants%20Desktop/WidgetSupport.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Column(
        children: [
          SizedBox(height: screenHeight * 0.1),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: screenWidth * 0.1),
              Text("01", style: AppWidget.SmallStyle3()),
              SizedBox(width: screenWidth * 0.1),
              Text(
                "ELEVATING DIGITAL EXPERIENCES",
                style: AppWidget.SmallStyle3(),
              ),
              Spacer(),
              // Text("OUR STUDIO", style: AppWidget.SmallStyle()),
            ],
          ),
          SizedBox(height: screenHeight * 0.1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Our story started with a simple goal:",
                style: AppWidget.HeroStyle().copyWith(
                  fontSize: screenWidth * 0.023,
                ),
              ),
              Text(
                "to create websites that don’t just look great",
                style: AppWidget.HeroStyle().copyWith(
                  fontSize: screenWidth * 0.023,
                ),
              ),
              Text(
                "but also deliver outstanding functionality and user experiences.",
                style: AppWidget.HeroStyle().copyWith(
                  fontSize: screenWidth * 0.023,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
