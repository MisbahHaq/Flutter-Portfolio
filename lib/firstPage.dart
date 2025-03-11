import 'package:flutter/material.dart';
import 'package:portfolio/WidgetSupport.dart';

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
          // First Row containing the "01", "ELEVATING DIGITAL EXPERIENCES", and "OUR STUDIO"
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: screenWidth * 0.1),
              Text("01", style: AppWidget.SmallStyle()),
              SizedBox(width: screenWidth * 0.1),
              Text(
                "ELEVATING DIGITAL EXPERIENCES",
                style: AppWidget.SmallStyle(),
              ),
              Spacer(),
              Text("OUR STUDIO", style: AppWidget.SmallStyle()),
            ],
          ),
          SizedBox(height: screenHeight * 0.1),

          // Second part where the "We craft elegant websites..." text will be placed below the header
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "We craft elegant websites and memorable",
                style: AppWidget.HeroStyle().copyWith(
                  fontSize: screenWidth * 0.04,
                ),
              ),
              Text(
                "digital experiences that blend timeless style",
                style: AppWidget.HeroStyle().copyWith(
                  fontSize: screenWidth * 0.04,
                ),
              ),
              Text(
                "with seamless functionality.",
                style: AppWidget.HeroStyle().copyWith(
                  fontSize: screenWidth * 0.04,
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Our designs aim for simplicity and beauty,",
                style: AppWidget.HeroStyle().copyWith(
                  fontSize: screenWidth * 0.04,
                ),
              ),
              Text(
                "alongside smooth interaction and refined",
                style: AppWidget.HeroStyle().copyWith(
                  fontSize: screenWidth * 0.04,
                ),
              ),
              Text(
                "visual storytelling.",
                style: AppWidget.HeroStyle().copyWith(
                  fontSize: screenWidth * 0.04,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
