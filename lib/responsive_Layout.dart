import 'package:flutter/material.dart';
import 'package:portfolio/TabletLayout/tabletLayout.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  ResponsiveLayout({required this.desktopBody, required this.mobileBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileBody;
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
          return TabletPage();
        } else {
          return desktopBody;
        }
      },
    );
  }
}
