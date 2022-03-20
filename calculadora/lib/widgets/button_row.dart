// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:calculadora/widgets/button.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;
  const ButtonRow({required this.buttons, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, b) {
          list.isEmpty
              ? list.add(b)
              : list.addAll([const SizedBox(width: 1), b]);
          return list;
        }),
      ),
    );
  }
}
