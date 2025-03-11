import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CaraouselFirst extends StatefulWidget {
  const CaraouselFirst({super.key});

  @override
  State<CaraouselFirst> createState() => _CaraouselFirstState();
}

class _CaraouselFirstState extends State<CaraouselFirst> {
  late List<VideoPlayerController> _controllers;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    final List<String> videoList = [
      "assets/videos/0303.mp4",
      "assets/videos/0303.mp4",
      "assets/videos/0303.mp4",
    ];

    _controllers =
        videoList.map((videoPath) {
          VideoPlayerController controller = VideoPlayerController.asset(
            videoPath,
          );
          controller.initialize().then((_) {
            setState(() {});
          });
          return controller;
        }).toList();
  }

  @override
  void dispose() {
    super.dispose();
    // Dispose all video controllers when the widget is disposed.
    for (var controller in _controllers) {
      controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        items: List.generate(_controllers.length, (index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child:
                _controllers[index].value.isInitialized
                    ? AspectRatio(
                      aspectRatio: _controllers[index].value.aspectRatio,
                      child: VideoPlayer(_controllers[index]),
                    )
                    : Center(child: CircularProgressIndicator()),
          );
        }),
        options: CarouselOptions(
          height: 300,
          autoPlay: true,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlayInterval: const Duration(seconds: 2),
          onPageChanged: (index, reason) {
            if (_currentIndex != index) {
              // Pause the previous video when moving to a new slide
              _controllers[_currentIndex].pause();
            }
            // Start playing the new video
            _controllers[index].play();
            _currentIndex = index;
          },
        ),
      ),
    );
  }
}
