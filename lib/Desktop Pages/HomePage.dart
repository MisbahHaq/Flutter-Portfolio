import 'package:flutter/material.dart';
import 'package:portfolio/Constants/DevNotes.dart';
import 'package:portfolio/Constants/Navbar.dart';
import 'package:portfolio/Desktop%20Pages/FirstPage.dart';
import 'package:portfolio/Desktop%20Pages/SecondPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _workKey = GlobalKey();
  final GlobalKey _devNotesKey = GlobalKey();

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      body: Column(
        children: [
          NavBar(
            isDarkMode: isDarkMode,
            toggleTheme: toggleTheme,
            onNavItemTap: (String section) {
              if (section == "Home") {
                scrollToSection(_homeKey);
              } else if (section == "Work") {
                scrollToSection(_workKey);
              } else if (section == "Dev Notes") {
                scrollToSection(_devNotesKey);
              }
            },
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors:
                      isDarkMode
                          ? [
                            const Color.fromARGB(255, 77, 75, 184),
                            const Color.fromARGB(255, 4, 110, 39),
                          ]
                          : [const Color(0xFFB5EAD7), const Color(0xFFD6C3FC)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    Container(
                      key: _homeKey,
                      height: MediaQuery.of(context).size.height / 1,
                      child: FirstPage(),
                    ),
                    Container(
                      key: _workKey,
                      height: MediaQuery.of(context).size.height,
                      child: SecondPage(),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      key: _devNotesKey,
                      height: MediaQuery.of(context).size.height,
                      child: DevNotesPage(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
