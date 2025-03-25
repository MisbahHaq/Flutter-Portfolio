import 'package:Misbah/DesktopLayout/Constants/caraousel.dart';
import 'package:Misbah/MobileLayout/Constants/WidgetSupport.dart';
import 'package:flutter/material.dart';

class SecondPageMobile extends StatelessWidget {
  const SecondPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: screenWidth * 0.1),
              Text("02", style: MobileAppWidget.MobileAlternateSmallStyleNew()),
              SizedBox(width: screenWidth * 0.1),
              Text(
                "MY RECENT PROJECTS",
                style: MobileAppWidget.MobileAlternateSmallStyleNew(),
              ),
              Spacer(),
            ],
          ),
          const SizedBox(height: 50),
          Container(
            width: 700,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(children: [SizedBox(height: 100), CaraouselFirst()]),
          ),
        ],
      ),
    );
  }
}
