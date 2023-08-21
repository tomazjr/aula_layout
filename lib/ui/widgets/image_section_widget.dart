import 'package:flutter/material.dart';

class ImageSectionWidget extends StatelessWidget {
  const ImageSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/lake.jpg',
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
