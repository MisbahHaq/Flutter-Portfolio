import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class WorkCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String videoAsset; // Local asset video path

  const WorkCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.videoAsset,
  });

  @override
  _WorkCardState createState() => _WorkCardState();
}

class _WorkCardState extends State<WorkCard> {
  late VideoPlayerController _controller;
  bool isHovered = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoAsset)
      ..initialize().then((_) {
        setState(() {}); // Update UI once video is initialized
        _controller.setLooping(true);
        _controller.play(); // Auto-play the video
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = screenWidth > 600 ? 400 : screenWidth * 0.9;

    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
        transform:
            isHovered
                ? Matrix4.translationValues(0, -5, 0)
                : Matrix4.identity(),
        height: 350,
        width: cardWidth,
        child: Stack(
          children: [
            // **Shadow Background (Less Width)**
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: cardWidth * 0.96, // Reduce shadow width
                  height: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 0,
                        blurRadius:
                            isHovered ? 6 : 3, // Slightly increased blur
                        offset:
                            isHovered ? const Offset(2, 4) : const Offset(2, 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // **Video Player**
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child:
                  _controller.value.isInitialized
                      ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                      : const Center(child: CircularProgressIndicator()),
            ),

            // **Text Overlay**
            Positioned(
              top: 10,
              left: 10,
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
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
