import 'package:aula_layout/ui/layout_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // log('screenHeight: ${MediaQuery.sizeOf(context).height}');
    // log('screenWidth: ${MediaQuery.sizeOf(context).width}');
    // if (MediaQuery.orientationOf(context) == Orientation.portrait) {
    //   log('Orientation is Portrait');
    // } else {
    //   log('Orientation is Landscape');
    // }
    return const MaterialApp(
      title: 'Flutter layout demo',
      home: LayoutScreen(),
    );
  }
}
