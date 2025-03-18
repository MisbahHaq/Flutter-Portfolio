import 'package:flutter/material.dart';

class FullScreenImageSlider extends StatelessWidget {
  final List<String> imagePaths;
  final int initialIndex;

  const FullScreenImageSlider({
    super.key,
    required this.imagePaths,
    required this.initialIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.8),
      body: Stack(
        children: [
          PageView.builder(
            controller: PageController(initialPage: initialIndex),
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              return Center(
                child: InteractiveViewer(
                  child: Image.asset(
                    imagePaths[index],
                    fit: BoxFit.contain,
                  ),
                ),
              );
            },
          ),
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
