import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:foodee/views/home/widgets/banner_item.dart';

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: bannerImages.map((imagePath) {
        return BannerItem(imagePath: imagePath);
      }).toList(),
      options: CarouselOptions(
        height: 170.0, // Adjust height as needed
        viewportFraction: 0.8, // Show part of the next and previous images
        autoPlay: true, // Enable auto-play
        autoPlayInterval: Duration(seconds: 3), // Duration between auto-plays
        autoPlayCurve: Curves.easeInOut, // Smooth animation curve
        enableInfiniteScroll: true, // Allow infinite scrolling
        scrollDirection: Axis.horizontal, // Horizontal scrolling
      ),
    );
  }
}

final List<String> bannerImages = [
  'assets/foodly/banners/banner1.png',
  'assets/foodly/banners/banner2.png',
  'assets/foodly/banners/banner3.png',
  'assets/foodly/banners/banner4.png',
];
