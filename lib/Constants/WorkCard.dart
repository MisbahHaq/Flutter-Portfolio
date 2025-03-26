import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class WorkCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String mediaAsset;

  const WorkCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.mediaAsset,
  });

  @override
  _WorkCardState createState() => _WorkCardState();
}

class _WorkCardState extends State<WorkCard> {
  VideoPlayerController? _controller;
  bool isHovered = false;
  bool isImage = false;

  @override
  void initState() {
    super.initState();
    isImage =
        widget.mediaAsset.endsWith('.png') ||
        widget.mediaAsset.endsWith('.jpg') ||
        widget.mediaAsset.endsWith('.jpeg');

    if (!isImage) {
      _controller = VideoPlayerController.asset(widget.mediaAsset)
        ..initialize().then((_) {
          setState(() {});
          _controller!.setLooping(true);
          _controller!.play();
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
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: cardWidth * 0.96,
                  height: 550,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: isHovered ? 6 : 3,
                        offset:
                            isHovered ? const Offset(2, 4) : const Offset(2, 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child:
                  isImage
                      ? Image.asset(
                        widget.mediaAsset,
                        width: cardWidth,
                        height: 500,
                        fit: BoxFit.cover,
                      )
                      : (_controller != null && _controller!.value.isInitialized
                          ? AspectRatio(
                            aspectRatio: _controller!.value.aspectRatio,
                            child: VideoPlayer(_controller!),
                          )
                          : const Center(child: CircularProgressIndicator())),
            ),
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
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: cardWidth * 0.8,
                    child: Text(
                      widget.subtitle,
                      textAlign: TextAlign.start,
                      softWrap: true,
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.black,
                      ),
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
