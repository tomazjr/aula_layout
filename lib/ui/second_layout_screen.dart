import 'dart:developer';

import 'package:aula_layout/ui/widgets/button_section_widget.dart';
import 'package:aula_layout/ui/widgets/image_section_widget.dart';
import 'package:aula_layout/ui/widgets/text_section_widget.dart';
import 'package:aula_layout/ui/widgets/title_section_widget.dart';
import 'package:flutter/material.dart';

class SecondLayoutScreen extends StatelessWidget {
  const SecondLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log('screenHeight: ${MediaQuery.sizeOf(context).height}');
    log('screenWidth: ${MediaQuery.sizeOf(context).width}');
    if (MediaQuery.orientationOf(context) == Orientation.portrait) {
      log('Orientation is Portrait');
    } else {
      log('Orientation is Landscape');
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 1024) {
            return ListView(
              children: const [
                ImageSectionWidget(),
                TitleSectionWidget(),
                ButtonSectionWidget(),
                TextSectionWidget(),
              ],
            );
          } else {
            return Row(
              children: [
                ImageSectionWidget(
                  imageHeight: MediaQuery.sizeOf(context).height,
                  imageWidth: MediaQuery.sizeOf(context).width * 0.5,
                ),
                const Flexible(
                  child: Column(
                    children: [
                      TitleSectionWidget(),
                      ButtonSectionWidget(),
                      TextSectionWidget(),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
