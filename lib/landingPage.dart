import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/WidgetSupport.dart';
import 'package:portfolio/firstPage.dart';
import 'package:portfolio/secondPage.dart';
import 'package:portfolio/thirdPage.dart';

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

  void _showFullScreenModal(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, // Close when tapping outside
      builder: (context) {
        return Dialog(
          insetPadding: EdgeInsets.zero, // Remove default dialog padding
          backgroundColor: Colors.transparent,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height, // Full height
            color: Colors.black, // Full background black
            child: Column(
              children: [
                // Top Navigation Bar
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "M — H",
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Text(
                          "CLOSE",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const Spacer(),

                // Menu Items with Lines
                Column(
                  children: [
                    const MenuItem(title: "WORKS"),
                    const DividerLine(),
                    const MenuItem(title: "ABOUT"),
                    const DividerLine(),
                    const MenuItem(title: "CONTACT"),
                  ],
                ),

                const Spacer(),

                // Footer
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "© 2025 STUDIO OLIMPO",
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "INSTAGRAM",
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        color: _scrollOffset > 1500 ? Colors.black : Colors.transparent,
        child: SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.vertical,
          child: LayoutBuilder(
            builder: (context, constraints) {
              double screenWidth = constraints.maxWidth;

              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      top: 30,
                      right: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("M — H", style: AppWidget.BigStyle()),
                        GestureDetector(
                          onTap: () => _showFullScreenModal(context),
                          child: Text("MENU", style: AppWidget.BigStyle()),
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
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: screenWidth > 600 ? 200 : 30,
                            top: 20,
                          ),
                          child: Text(
                            "Web & App Development",
                            style: AppWidget.MidStyle(),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 2),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("Haque", style: AppWidget.HugeStyle())],
                  ),

                  const SizedBox(height: 90),
                  const FirstPage(),
                  const SizedBox(height: 260),
                  const SecondPage(),
                  const SizedBox(height: 90),
                  const ThirdPage(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  const MenuItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        title,
        style: GoogleFonts.playfairDisplay(fontSize: 48, color: Colors.white),
      ),
    );
  }
}

class DividerLine extends StatelessWidget {
  const DividerLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 1,
      color: Colors.white.withOpacity(0.5),
      margin: const EdgeInsets.symmetric(vertical: 8),
    );
  }
}
