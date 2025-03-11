// import 'package:flutter/material.dart';
// import 'package:portfolio/WidgetSupport.dart';

// class FirstPage extends StatelessWidget {
//   const FirstPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           SizedBox(height: 90),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(width: 90),
//               Text("01", style: AppWidget.SmallStyle()),
//               SizedBox(width: 90),
//               Text(
//                 "ELEVATING DIGITAL EXPERIENCES",
//                 style: AppWidget.SmallStyle(),
//               ),
//               Spacer(),
//               Text("OUR STUDIO", style: AppWidget.SmallStyle()),
//               SizedBox(width: 90),
//             ],
//           ),
//           SizedBox(height: 90),
//           Container(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 110),
//                 Text(
//                   "We craft elegant websites and memorable",
//                   style: AppWidget.HeroStyle(),
//                 ),
//                 Text(
//                   "digital experiences that blend timeless style",
//                   style: AppWidget.HeroStyle(),
//                 ),
//                 Text(
//                   "with seamless functionality.",
//                   style: AppWidget.HeroStyle(),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:portfolio/WidgetSupport.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size for responsiveness
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.05,
      ), // Padding on left and right
      child: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.1,
          ), // Adjust the spacing based on screen height
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: screenWidth * 0.1), // Responsive left margin
              Text("01", style: AppWidget.SmallStyle()),
              SizedBox(
                width: screenWidth * 0.1,
              ), // Responsive spacing between texts
              Text(
                "ELEVATING DIGITAL EXPERIENCES",
                style: AppWidget.SmallStyle(),
              ),
              Spacer(),
              Text("OUR STUDIO", style: AppWidget.SmallStyle()),
              SizedBox(width: screenWidth * 0.1), // Responsive right margin
            ],
          ),
          SizedBox(height: screenHeight * 0.1), // Adjust the vertical spacing
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * 0.12,
                ), // Adjust top margin for smaller screens
                Text(
                  "We craft elegant websites and memorable",
                  style: AppWidget.HeroStyle().copyWith(
                    fontSize: screenWidth * 0.04,
                  ), // Adjust font size
                ),
                Text(
                  "digital experiences that blend timeless style",
                  style: AppWidget.HeroStyle().copyWith(
                    fontSize: screenWidth * 0.04,
                  ), // Adjust font size
                ),
                Text(
                  "with seamless functionality.",
                  style: AppWidget.HeroStyle().copyWith(
                    fontSize: screenWidth * 0.04,
                  ), // Adjust font size
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
