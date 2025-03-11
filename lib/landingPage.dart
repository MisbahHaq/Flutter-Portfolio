import 'package:flutter/material.dart';
import 'package:portfolio/WidgetSupport.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Text("M———H", style: AppWidget.BigStyle()),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(child: Text("Misbah", style: AppWidget.HugeStyle())),
                    Padding(
                      padding: EdgeInsets.only(right: 250, top: 50),
                      child: Text(
                        "Web & App Development",
                        style: AppWidget.MidStyle(),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [Text("Haque", style: AppWidget.HugeStyle())],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
