import 'package:Misbah/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'projectDetailPage.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  double _opacity = 0.0;
  double _scale = 0.0;

  @override
  void initState() {
    super.initState();
    _triggerAnimations();
  }

  void _triggerAnimations() async {
    await Future.delayed(Duration(milliseconds: 200));
    setState(() {
      _opacity = 1.0; // Fade in the content
    });

    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      _scale = 1.0; // Scale content
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Hidden()),
                    );
                  },
                  child: Container(
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          AnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: _opacity,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Projects",
                style: GoogleFonts.poppins(
                  color: const Color.fromARGB(255, 59, 59, 61),
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(height: 200),
          AnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: _opacity,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 20),
              child: Container(
                width: 370,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide.none,
                    left: BorderSide.none,
                    right: BorderSide.none,
                    bottom: BorderSide(color: Colors.black, width: 2.1),
                  ),
                ),
                child: Text(
                  "Select Destination",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _opacity,
              child: AnimatedScale(
                duration: Duration(seconds: 1),
                scale: _scale,
                child: _buildProjectCard(
                  "FoodGo",
                  "F",
                  "FoodGo is a mobile app designed to satisfy your cravings instantly. Order from a wide variety of fast food options—burgers, pizzas, fries, and more—with quick doorstep delivery, bringing convenience and deliciousness right to you.",
                  context,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _opacity,
              child: AnimatedScale(
                duration: Duration(seconds: 1),
                scale: _scale,
                child: _buildProjectCard(
                  "Cineflix",
                  "C",
                  "CineFlix is a mobile app designed to enhance your movie-going experience. Browse the latest movies, check showtimes, and book tickets instantly—all from the comfort of your phone.",
                  context,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _opacity,
              child: AnimatedScale(
                duration: Duration(seconds: 1),
                scale: _scale,
                child: _buildProjectCard(
                  "Aurpaisy",
                  "A",
                  "Aurpaisy is a feature-rich mobile banking app designed to revolutionize the way you manage your finances. With an emphasis on speed, security, and convenience, it offers instant financial solutions at your fingertips, ensuring your banking experience is seamless and hassle-free.",
                  context,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _opacity,
              child: AnimatedScale(
                duration: Duration(seconds: 1),
                scale: _scale,
                child: _buildProjectCard(
                  "Briefly",
                  "B",
                  "Briefly is a mobile application that delivers the latest news based on your selected categories. With real-time updates, an intuitive interface, and a seamless reading experience, you can stay informed on the topics that matter most to you.",
                  context,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(
    String projectName,
    String iconLetter,
    String description,
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => ProjectDetailPage(
                  ProjectTitle: projectName,
                  ProjectDescription: description,
                ),
          ),
        );
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black,
              ),
              child: Center(
                child: Text(iconLetter, style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          SizedBox(width: 50),
          Container(
            child: Text(
              projectName,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
