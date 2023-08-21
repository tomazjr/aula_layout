import 'package:flutter/material.dart';

class ImageSectionWidget extends StatelessWidget {
  final double? imageWidth;
  final double? imageHeight;
  const ImageSectionWidget({
    super.key,
    this.imageWidth,
    this.imageHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/lake.jpg',
      width: imageWidth ?? 600,
      height: imageHeight ?? 240,
      fit: BoxFit.cover,
    );
  }
}
