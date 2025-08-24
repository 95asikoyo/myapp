import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HeroSlider extends StatelessWidget {
  const HeroSlider({super.key});

  @override
  Widget build(BuildContext context) {
    // List of local asset images (place them in assets/images/hero/)
    final heroImages = [
      "assets/images/hero/hero-1.jpg",
      "assets/images/hero/hero-2.jpg",
      "assets/images/hero/hero-3.jpg",
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1,
      ),
      items: heroImages.map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
