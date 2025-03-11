import 'package:flutter/material.dart';
import 'package:portfolio/WidgetSupport.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 90),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 90),
              Text("01", style: AppWidget.SmallStyle()),
              SizedBox(width: 90),
              Text(
                "ELEVATING DIGITAL EXPERIENCES",
                style: AppWidget.SmallStyle(),
              ),
              Spacer(),
              Text("OUR STUDIO", style: AppWidget.SmallStyle()),
            ],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "We craft elegant websites and memorable",
                  style: AppWidget.HeroStyle(),
                ),
                Text(
                  "digital experiences that blend timeless style",
                  style: AppWidget.HeroStyle(),
                ),
                Text(
                  "with seamless functionality.",
                  style: AppWidget.HeroStyle(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
