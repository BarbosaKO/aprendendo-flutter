// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button(
      {required this.text,
      required this.cb,
      this.big = false,
      this.cor = const Color.fromRGBO(42, 42, 42, 1),
      Key? key})
      : super(key: key);

  final String text;
  final bool big;
  final Color cor;
  final void Function(String) cb;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(48.0),
            )),
            backgroundColor: MaterialStateProperty.all<Color?>(cor),
          ),
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Verdana',
                fontSize: 35,
                fontWeight: FontWeight.w300),
          ),
          onPressed: () => cb(text),
        ),
      ),
    );
  }
}
