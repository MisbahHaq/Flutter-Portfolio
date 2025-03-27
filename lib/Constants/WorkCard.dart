// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:video_player/video_player.dart';

// class WorkCard extends StatefulWidget {
//   final String title;
//   final String subtitle;
//   final String? videoAsset;
//   final String? description;
//   final String date;
//   final bool isExpanded;

//   const WorkCard({
//     super.key,
//     required this.title,
//     required this.subtitle,
//     this.videoAsset,
//     this.description,
//     required this.date,
//     required this.isExpanded,
//   });

//   @override
//   _WorkCardState createState() => _WorkCardState();
// }

// class _WorkCardState extends State<WorkCard> {
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     if (widget.videoAsset != null) {
//       _controller = VideoPlayerController.asset(widget.videoAsset!)
//         ..initialize().then((_) {
//           setState(() {});
//           _controller.setLooping(true);
//           _controller.play();
//         });
//     }
//   }

//   @override
//   void dispose() {
//     if (widget.videoAsset != null) {
//       _controller.dispose();
//     }
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double cardWidth = widget.isExpanded ? 450 : 350;
//     double cardHeight = widget.isExpanded ? 400 : 300;

//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 300),
//       curve: Curves.easeInOut,
//       width: cardWidth,
//       height: cardHeight,
//       decoration: BoxDecoration(
//         color: Colors.transparent,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             blurRadius: 10,
//             spreadRadius: 3,
//           ),
//         ],
//       ),
//       child: Stack(
//         children: [
//           if (widget.videoAsset != null)
//             ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child:
//                   _controller.value.isInitialized
//                       ? AspectRatio(
//                         aspectRatio: _controller.value.aspectRatio,
//                         child: VideoPlayer(_controller),
//                       )
//                       : const Center(child: CircularProgressIndicator()),
//             ),
//           Positioned(
//             top: 120,
//             left: 175,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,

//               children: [
//                 Text(
//                   widget.title,
//                   style: GoogleFonts.montserrat(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 Text(
//                   widget.subtitle,
//                   softWrap: true,
//                   style: GoogleFonts.montserrat(
//                     fontSize: 14,
//                     color: Colors.white70,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           if (widget.isExpanded && widget.description != null)
//             Center(
//               child: Container(
//                 padding: const EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   color: Colors.black54,
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       widget.title,
//                       style: GoogleFonts.montserrat(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Text(
//                       widget.date,
//                       style: GoogleFonts.montserrat(
//                         fontSize: 15,
//                         fontWeight: FontWeight.normal,
//                         color: Colors.grey,
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Text(
//                       widget.description!,
//                       textAlign: TextAlign.center,
//                       style: GoogleFonts.montserrat(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class WorkCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String? videoAsset;
  final String? description;
  final String date;
  final bool isExpanded;

  const WorkCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.videoAsset,
    this.description,
    required this.date,
    required this.isExpanded,
  });

  @override
  _WorkCardState createState() => _WorkCardState();
}

class _WorkCardState extends State<WorkCard> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    if (widget.videoAsset != null) {
      _controller = VideoPlayerController.asset(widget.videoAsset!)
        ..initialize().then((_) {
          if (mounted) {
            setState(() {});
            _controller!.setLooping(true);
            _controller!.play();
          }
        });
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double cardWidth = widget.isExpanded ? 450 : 350;
    double cardHeight = widget.isExpanded ? 400 : 300;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Stack(
        children: [
          if (widget.videoAsset != null &&
              _controller != null &&
              _controller!.value.isInitialized)
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: AspectRatio(
                aspectRatio: _controller!.value.aspectRatio,
                child: VideoPlayer(_controller!),
              ),
            )
          else if (widget.videoAsset != null)
            const Center(child: CircularProgressIndicator()),
          Positioned(
            top: 120,
            left: 175,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  widget.subtitle,
                  softWrap: true,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          if (widget.isExpanded && widget.description != null)
            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.title,
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      widget.date,
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      widget.description!,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
