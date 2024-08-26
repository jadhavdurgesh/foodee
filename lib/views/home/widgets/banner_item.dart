import 'package:flutter/material.dart';

class BannerItem extends StatelessWidget {
  final String imagePath;

  const BannerItem({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.0), // Space between images
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), // Curved corners
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fill, // Ensure the image fits within the bounds
        ),
      ),
      clipBehavior: Clip.hardEdge, // Ensure clipping
    );
  }
}
