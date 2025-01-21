import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                Text(
                  "ReBuy",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CaraouselVerveStep(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "The Rebuy app is a seamless platform for buying and selling pre-owned items like sofas, TVs, furniture, appliances, and more. Designed for convenience and trust, it connects buyers and sellers in a user-friendly environment.",
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
                            projectName: "ReBuy",
                            moduleOne:
                                "Handles user accounts, transactions, and expense tracking.",
                            moduleTwo:
                                "Clean, modular codebase with a secure database for financial data.",
                            moduleThree:
                                "Offers transaction history, friend transfers, and notifications.",
                            moduleFour:
                                "Includes interactive and user-friendly interfaces for ease of use.",
                            moduleFive:
                                "Integrates data visualization libraries for clear financial insights.",
                            moduleSix:
                                "Ensures secure transactions with encryption, two-factor authentication, and fraud detection."),
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
                CaraouselVerveStep(),
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
                            projectName: "Blink-it",
                            moduleOne:
                                "Displays a categorized catalog of products, including groceries, kitchen items, and festive essentials.",
                            moduleTwo:
                                "Includes interactive and user-friendly interfaces for ease of use.",
                            moduleThree:
                                "Seamless navigation between sections with dynamic content rendering.",
                            moduleFour:
                                "Integrates interactive banners and horizontal scroll views for browsing promotions and products.",
                            moduleFive:
                                "Modularized codebase for easy addition of new features and categories.",
                            moduleSix:
                                "Designed to accommodate future integrations like cart systems and user accounts."),
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
                  "Mind Ease",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CarouselMindEase(),
                const SizedBox(height: 10),
                Text(
                  "The Mental Health App is designed to provide users with a calming and supportive experience, focusing on promoting mental well-being through intuitive design and features.",
                  style: GoogleFonts.poppins(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Module(
                              projectName: "MindEase",
                              moduleOne:
                                  "Tracks mood, journaling, and provides mindfulness exercises.",
                              moduleTwo:
                                  "Modular UI components and database integration for storing user data.",
                              moduleThree:
                                  "Includes streaks, badges, and motivational notifications.",
                              moduleFour:
                                  "Secure user anonymity and state management for progress tracking.",
                              moduleFive:
                                  "Displays mood trends with graphs and personalized suggestions.",
                              moduleSix:
                                  "Efficient algorithms for data analysis and visualization."),
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
                    )),
                const SizedBox(height: 25),
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
                            moduleOne:
                                "Handles user accounts, transactions, and expense tracking.",
                            moduleTwo:
                                "Clean, modular codebase with a secure database for financial data.",
                            moduleThree:
                                "Offers transaction history, friend transfers, and notifications.",
                            moduleFour:
                                "Includes interactive and user-friendly interfaces for ease of use.",
                            moduleFive:
                                "Integrates data visualization libraries for clear financial insights.",
                            moduleSix:
                                "Ensures secure transactions with encryption, two-factor authentication, and fraud detection."),
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

class CarouselMindEase extends StatelessWidget {
  const CarouselMindEase({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList1 = ["assets/images/dev.jpg"];
    return Center(
      child: CarouselSlider(
        items: [1, 2, 3].map((i) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset(
                'assets/images/dev.jpg',
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(height: 300),
      ),
    );
  }
}

class CaraouselAurPaisy extends StatelessWidget {
  const CaraouselAurPaisy({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList1 = ["assets/images/dev.jpg"];
    return Center(
      child: CarouselSlider(
        items: [1, 2, 3].map((i) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset(
                'assets/images/dev.jpg',
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(height: 300),
      ),
    );
  }
}

class CaraouselVerveStep extends StatelessWidget {
  const CaraouselVerveStep({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList1 = ["assets/images/dev.jpg"];
    return Center(
      child: CarouselSlider(
        items: [1, 2, 3].map((i) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset(
                'assets/images/dev.jpg',
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(height: 300),
      ),
    );
  }
}
