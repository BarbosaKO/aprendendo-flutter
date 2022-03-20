// ignore_for_file: avoid_unnecessary_containers

import 'package:calculadora/models/memory.dart';
import 'package:calculadora/widgets/teclado.dart';
import 'package:calculadora/widgets/visor.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Visor(
              resultado: memory.value,
            ),
            Teclado(cb: _onPressed),
          ],
        ),
      ),
    );
  }
}
