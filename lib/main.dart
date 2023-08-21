import 'dart:developer';

import 'package:aula_layout/ui/layout_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    log('screenHeight: $screenHeight');
    double screenWidth = MediaQuery.of(context).size.width;
    log('screenWidth: $screenWidth');
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      log('Orientation is Portrait');
    } else {
      log('Orientation is Landscape');
    }
    return const MaterialApp(
      title: 'Flutter layout demo',
      home: LayoutScreen(),
    );
  }
}
