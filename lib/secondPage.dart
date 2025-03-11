import 'package:flutter/material.dart';
import 'package:portfolio/WidgetSupport.dart';
import 'package:portfolio/caraousel.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Column(
        children: [
          SizedBox(height: 90),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: screenWidth * 0.1),
              Text("02", style: AppWidget.AlternateSmallStyle()),
              SizedBox(width: screenWidth * 0.1),
              Text("HIGHLIGHTS", style: AppWidget.AlternateSmallStyle()),
              Spacer(),
              Text("EXPLORE PROJECTS", style: AppWidget.AlternateSmallStyle()),
              SizedBox(width: screenWidth * 0.1),
            ],
          ),
          SizedBox(height: 90),
          Container(
            width: 550,
            height: 500,
            decoration: BoxDecoration(color: Colors.grey),
            child: Column(children: [SizedBox(height: 100), CaraouselFirst()]),
          ),
        ],
      ),
    );
  }
}
