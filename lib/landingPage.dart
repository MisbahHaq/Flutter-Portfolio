import 'package:flutter/material.dart';
import 'package:portfolio/WidgetSupport.dart';
import 'package:portfolio/firstPage.dart';
import 'package:portfolio/secondPage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    setState(() {
      _scrollOffset = _scrollController.offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 500), // Smooth transition duration
        color: _scrollOffset > 1500 ? Colors.black : Colors.transparent,
        child: SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
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
                        Center(
                          child: Text("Misbah", style: AppWidget.HugeStyle()),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 200, top: 20),
                          child: Text(
                            "Web & App Development",
                            style: AppWidget.MidStyle(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text("Haque", style: AppWidget.HugeStyle()),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 110),
                    FirstPage(),
                    SizedBox(height: 350),
                    SecondPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
