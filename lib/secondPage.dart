import 'package:flutter/material.dart';
import 'package:portfolio/WidgetSupport.dart';
import 'package:portfolio/caraousel.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Column(
        children: [
          SizedBox(height: 90),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 90),
              Text("02", style: AppWidget.AlternateSmallStyle()),
              SizedBox(width: 90),
              Text("HIGHLIGHTS", style: AppWidget.AlternateSmallStyle()),
              Spacer(),
              Text("EXPLORE PROJECTS", style: AppWidget.AlternateSmallStyle()),
              SizedBox(width: 90),
            ],
          ),
          SizedBox(height: 90),
          Container(
            width: 550,
            height: 690,
            decoration: BoxDecoration(color: Colors.grey),
            child: Column(children: [SizedBox(height: 150), CaraouselFirst()]),
          ),
        ],
      ),
    );
  }
}
