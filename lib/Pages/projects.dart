import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/caraousel.dart';
import 'package:portfolio/constants/module.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            '// Projects',
            style: GoogleFonts.poppins(
              color: const Color.fromARGB(255, 59, 59, 61),
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(37),
          ),
          child: Container(
            padding: const EdgeInsets.all(30),
            color: const Color(0xff009688),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Blink-it",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CaraouselBlinkit(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Blinkit is a fast and efficient platform designed for instant grocery and essentials delivery, catering to users who value convenience and time. This app replicates the features of Blinkit, providing a smooth shopping experience for daily needs with quick doorstep delivery.",
                  style: GoogleFonts.poppins(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Module(
                          projectName: "Blinkt-it",
                          module1Name: "Core Features",
                          moduleOne:
                              "Displays a categorized catalog of products, including groceries, kitchen items, and festive essentials.",
                          module2Name: "User Engagement",
                          moduleTwo:
                              "Includes interactive and user-friendly interfaces for ease of use.",
                          module3Name:
                              "Seamless navigation between sections with dynamic content rendering.",
                          moduleThree: "Analytics & Insights",
                          module4Name: "Content Personalization",
                          moduleFour:
                              "Integrates interactive banners and horizontal scroll views for browsing promotions and products.",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        "Read More",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "AurPaisy",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CaraouselAurPaisy(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "AurPaisy is a modern and intuitive banking app designed to simplify your financial management. With seamless transaction features, you can transfer money to banks and friends effortlessly. The app also includes a powerful expense tracking tool, helping you monitor and manage your spending with detailed history and insights.",
                  style: GoogleFonts.poppins(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Module(
                            projectName: "AurPaisy",
                            module1Name: "Core Features",
                            moduleOne:
                                "Handles user accounts, transactions, and expense tracking.",
                            module2Name: "User Engagement",
                            moduleTwo:
                                "Clean, modular codebase with a secure database for financial data.",
                            module3Name: "Analyticsd & Insights",
                            moduleThree:
                                "Offers transaction history, friend transfers, and notifications.",
                            module4Name: "Content Personalization",
                            moduleFour:
                                "Includes interactive and user-friendly interfaces for ease of use."),
                      ),
                    );
                  },
                  child: Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        "Read More",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
