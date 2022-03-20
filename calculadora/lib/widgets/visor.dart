// ignore_for_file: must_be_immutable

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Visor extends StatelessWidget {
  String resultado = '0.00';
  Visor({Key? key, this.resultado = '0.00'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomRight,
        color: const Color.fromRGBO(42, 42, 42, 1),
        child: AutoSizeText(
          resultado,
          minFontSize: 40,
          maxFontSize: 120,
          maxLines: 1,
          style: const TextStyle(
            fontFamily: 'verdana',
            color: Colors.white,
            fontSize: 120,
          ),
        ),
      ),
    );
  }
}
