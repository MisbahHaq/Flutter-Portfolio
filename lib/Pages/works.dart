import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Pages/aboutPage.dart';
import 'package:portfolio/Pages/contactPage.dart';
import 'package:video_player/video_player.dart';
import 'package:portfolio/Constants/WidgetSupport.dart';
import 'package:portfolio/Pages/landingPage.dart';

class Works extends StatefulWidget {
  const Works({super.key});

  @override
  State<Works> createState() => _WorksState();
}

class _WorksState extends State<Works> {
  void _showFullScreenModal(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LandingPage(),
                            ),
                          );
                        },
                        child: Text(
                          "M — H",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 50, top: 25),
                          child: Text(
                            "CLOSE",
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const Spacer(),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Works()),
                        );
                      },
                      child: const MenuItem(title: "WORKS"),
                    ),
                    const DividerLine(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutPage()),
                        );
                      },
                      child: const MenuItem(title: "ABOUT"),
                    ),
                    const DividerLine(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContactPage(),
                          ),
                        );
                      },
                      child: const MenuItem(title: "CONTACT"),
                    ),
                  ],
                ),

                const Spacer(),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "MADE WITH FLUTTER",
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

  late VideoPlayerController _cyberfictionController;
  late VideoPlayerController _zeltController;

  @override
  void initState() {
    super.initState();
    _cyberfictionController = VideoPlayerController.asset(
        "assets/videos/0303.mp4",
      )
      ..initialize().then((_) {
        _cyberfictionController.setLooping(true);
        _cyberfictionController.play();
        setState(() {});
      });
    _zeltController = VideoPlayerController.asset("assets/videos/0307.mp4")
      ..initialize().then((_) {
        _zeltController.setLooping(true);
        _zeltController.play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    _cyberfictionController.dispose();
    _zeltController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 246, 241, 1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LandingPage()),
                      );
                    },
                    child: Text("M — H", style: AppWidget.BigStyle()),
                  ),
                  GestureDetector(
                    onTap: () => _showFullScreenModal(context),
                    child: Text("MENU", style: AppWidget.BigStyle()),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Text("01", style: AppWidget.NavStyle()),
                      const SizedBox(width: 80),
                      Text("CYBERFICTION", style: AppWidget.NavStyle()),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Text("SEE PROJECT", style: AppWidget.NavStyle()),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                width: screenWidth * 0.8,
                height: 700,
                color: Colors.black,
                child:
                    _cyberfictionController.value.isInitialized
                        ? ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: AspectRatio(
                            aspectRatio:
                                _cyberfictionController.value.aspectRatio,
                            child: VideoPlayer(_cyberfictionController),
                          ),
                        )
                        : const Center(child: CircularProgressIndicator()),
              ),
            ),
            const SizedBox(height: 200),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Text("02", style: AppWidget.NavStyle()),
                      const SizedBox(width: 80),
                      Text("ZELT", style: AppWidget.NavStyle()),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Text("SEE PROJECT", style: AppWidget.NavStyle()),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                width: screenWidth * 0.8,
                height: 700,
                color: Colors.black,
                child:
                    _zeltController.value.isInitialized
                        ? ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: AspectRatio(
                            aspectRatio: _zeltController.value.aspectRatio,
                            child: VideoPlayer(_zeltController),
                          ),
                        )
                        : const Center(child: CircularProgressIndicator()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
