import 'package:aula_layout/ui/widgets/button_section_widget.dart';
import 'package:aula_layout/ui/widgets/image_section_widget.dart';
import 'package:aula_layout/ui/widgets/text_section_widget.dart';
import 'package:aula_layout/ui/widgets/title_section_widget.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Screen'),
      ),
      body: ListView(
        children: const [
          ImageSectionWidget(),
          TitleSectionWidget(),
          ButtonSectionWidget(),
          TextSectionWidget(),
        ],
      ),
    );
  }
}
