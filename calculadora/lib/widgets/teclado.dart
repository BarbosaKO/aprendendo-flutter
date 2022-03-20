// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:calculadora/widgets/button.dart';
import 'package:calculadora/widgets/button_row.dart';

class Teclado extends StatelessWidget {
  Teclado({Key? key, required this.cb}) : super(key: key);

  final void Function(String) cb;

  String tecla = '1';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520,
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      decoration: const BoxDecoration(color: Color.fromRGBO(20, 20, 20, 1)),
      child: Column(
        children: <Widget>[
          ButtonRow(buttons: [
            Button(
              text: 'AC',
              cor: const Color.fromRGBO(82, 82, 82, 1),
              big: true,
              cb: cb,
            ),
            Button(
              text: '%',
              cor: const Color.fromRGBO(82, 82, 82, 1),
              cb: cb,
            ),
            Button(
              text: '/',
              cor: const Color.fromRGBO(255, 87, 34, 1),
              cb: cb,
            ),
          ]),
          ButtonRow(buttons: [
            Button(
              text: '7',
              cb: cb,
            ),
            Button(
              text: '8',
              cb: cb,
            ),
            Button(
              text: '9',
              cb: cb,
            ),
            Button(
              text: 'x',
              cor: const Color.fromRGBO(255, 87, 34, 1),
              cb: cb,
            ),
          ]),
          ButtonRow(buttons: [
            Button(
              text: '4',
              cb: cb,
            ),
            Button(
              text: '5',
              cb: cb,
            ),
            Button(
              text: '6',
              cb: cb,
            ),
            Button(
              text: '-',
              cor: const Color.fromRGBO(255, 87, 34, 1),
              cb: cb,
            ),
          ]),
          ButtonRow(buttons: [
            Button(
              text: '1',
              cb: cb,
            ),
            Button(
              text: '2',
              cb: cb,
            ),
            Button(
              text: '3',
              cb: cb,
            ),
            Button(
              text: '+',
              cor: const Color.fromRGBO(255, 87, 34, 1),
              cb: cb,
            ),
          ]),
          ButtonRow(buttons: [
            Button(
              text: '0',
              big: true,
              cb: cb,
            ),
            Button(
              text: '.',
              cb: cb,
            ),
            Button(
              text: '=',
              cor: const Color.fromRGBO(255, 87, 34, 1),
              cb: cb,
            ),
          ]),
        ],
      ),
    );
  }
}
