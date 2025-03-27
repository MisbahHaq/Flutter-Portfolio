import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:portfolio/Desktop%20Pages/HomePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(); // Continuous rotation

    // Navigate to home page after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                double angle = _controller.value * 2 * pi;

                return Transform(
                  alignment: Alignment.center,
                  transform: _get3DTransform(angle),
                  child: _buildRubiksCube(),
                );
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "Loading...",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to apply 3D transformation
  Matrix4 _get3DTransform(double angle) {
    return Matrix4.identity()
      ..setEntry(3, 2, 0.001) // Perspective effect
      ..rotateX(angle) // Rotate on X-axis
      ..rotateY(angle); // Rotate on Y-axis
  }

  // Function to build a simulated 3D Rubik's Cube
  Widget _buildRubiksCube() {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildCubeFace(Colors.red, pi / 2, 0), // Front face
        _buildCubeFace(Colors.blue, -pi / 2, 0), // Back face
        _buildCubeFace(Colors.green, 0, pi / 2), // Left face
        _buildCubeFace(Colors.yellow, 0, -pi / 2), // Right face
        _buildCubeFace(Colors.orange, -pi / 2, pi), // Top face
        _buildCubeFace(Colors.white, pi / 2, pi), // Bottom face
      ],
    );
  }

  // Function to create a single face of the Rubik's Cube
  Widget _buildCubeFace(Color color, double rotateX, double rotateY) {
    return Transform(
      alignment: Alignment.center,
      transform:
          Matrix4.identity()
            ..setEntry(3, 2, 0.001) // Perspective
            ..rotateX(rotateX)
            ..rotateY(rotateY),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: color.withOpacity(0.9),
          border: Border.all(color: Colors.black, width: 2),
        ),
      ),
    );
  }
}
