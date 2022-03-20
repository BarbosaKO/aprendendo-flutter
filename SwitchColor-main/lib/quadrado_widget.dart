import 'package:flutter/material.dart';
import 'dart:math';

class QuadradoWidget extends StatelessWidget {
  const QuadradoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        color: Color.fromRGBO(Random().nextInt(255) + 1,
            Random().nextInt(255) + 1, Random().nextInt(255) + 1, 1));
  }
}
