import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Constants/FontWidgets.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _misbahAnimation;
  late Animation<Offset> _haqueAnimation;
  late Animation<Offset> _webDevAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _misbahAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    _haqueAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    _webDevAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          child: LayoutBuilder(
            builder: (context, constraints) {
              double screenWidth = constraints.maxWidth;
              return Column(
                children: [
                  Row(
                    children: [
                      Center(
                        child: SlideTransition(
                          position: _misbahAnimation,
                          child: Builder(
                            builder: (context) {
                              return Text(
                                "Misbah",
                                style: AppWidget.HugeStyle(context),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SlideTransition(
                        position: _haqueAnimation,
                        child: Builder(
                          builder: (context) {
                            return Text(
                              "Haque",
                              style: AppWidget.HugeStyle(context),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
