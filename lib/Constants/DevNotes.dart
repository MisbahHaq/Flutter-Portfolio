import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Constants/FontWidgets.dart';
import 'package:url_launcher/url_launcher.dart';

class DevNotesPage extends StatefulWidget {
  @override
  _DevNotesPageState createState() => _DevNotesPageState();
}

class _DevNotesPageState extends State<DevNotesPage> {
  bool showNotes = false;

  void _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint("Could not launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 80,
            child: Stack(
              children: [
                Container(
                  child: ClipRect(
                    child: Opacity(
                      opacity: 0.3,
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 10),
                        child: SizedBox(
                          width: 1100,
                          child: Text(
                            "DEV NOTES",
                            style: AppWidget.AlternateMidStyle2(context),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 200,
            child: Column(
              children: [
                Text(
                  "DEV NOTES",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 10),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        "I had a lot of fun building this website and getting to use a few techniques I've learned through the years, as well as some new browser features.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showNotes = !showNotes;
                          });
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: showNotes ? Colors.green : Colors.grey,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 8),
                            ],
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.code,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        children: [
                          const TextSpan(text: "Drop me a line at "),
                          TextSpan(
                            text: "misbahhaque@yahoo.com",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Icon(
                                Icons.email,
                                size: 16,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed:
                              () => _launchUrl("https://github.com/MisbahHaq"),
                          icon: const FaIcon(
                            FontAwesomeIcons.github,
                            size: 30,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          onPressed:
                              () => _launchUrl(
                                "https://linkedin.com/in/your-profile",
                              ),
                          icon: const FaIcon(
                            FontAwesomeIcons.linkedin,
                            size: 30,
                            color: Colors.green,
                          ),
                        ),
                      ],
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
