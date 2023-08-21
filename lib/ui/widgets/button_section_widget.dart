import 'package:aula_layout/ui/widgets/button_column_widget.dart';
import 'package:flutter/material.dart';

class ButtonSectionWidget extends StatelessWidget {
  const ButtonSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonColumnWidget(color: color, icon: Icons.call, label: 'CALL'),
        ButtonColumnWidget(color: color, icon: Icons.near_me, label: 'ROUTE'),
        ButtonColumnWidget(color: color, icon: Icons.share, label: 'SHARE'),
      ],
    );
  }
}
