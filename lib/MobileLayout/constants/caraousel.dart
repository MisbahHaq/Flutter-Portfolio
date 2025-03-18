import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:Misbah/MobileLayout/constants/fullscreen.dart'
    show FullScreenImageSlider;

class CaraouselBlinkit extends StatelessWidget {
  const CaraouselBlinkit({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> imgList1 = [
      "assets/images/1.png",
      "assets/images/2.png",
      "assets/images/3.png",
    ];
    return Center(
      child: CarouselSlider(
        items:
            imgList1.asMap().entries.map((entry) {
              final index = entry.key;
              final imagePath = entry.value;
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => FullScreenImageSlider(
                            imagePaths: imgList1,
                            initialIndex: index,
                          ),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }).toList(),
        options: CarouselOptions(
          height: 300,
          autoPlay: true,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlayInterval: const Duration(seconds: 2),
        ),
      ),
    );
  }
}

class CaraouselAurPaisy extends StatelessWidget {
  const CaraouselAurPaisy({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> imgList1 = [
      "assets/images/bank1.png",
      "assets/images/bank2.png",
      "assets/images/bank3.png",
    ];
    return Center(
      child: CarouselSlider(
        items:
            imgList1.asMap().entries.map((entry) {
              final index = entry.key;
              final imagePath = entry.value;
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => FullScreenImageSlider(
                            imagePaths: imgList1,
                            initialIndex: index,
                          ),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }).toList(),
        options: CarouselOptions(
          height: 300,
          autoPlay: true,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlayInterval: const Duration(seconds: 2),
        ),
      ),
    );
  }
}
