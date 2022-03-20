import 'package:flutter/material.dart';

class CampoCheckbox extends StatefulWidget {
  const CampoCheckbox({Key? key}) : super(key: key);

  @override
  State<CampoCheckbox> createState() => _CampoCheckboxState();
}

class _CampoCheckboxState extends State<CampoCheckbox> {
  bool? _checkboxValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teste"),
      ),
      body: Column(
        children: <Widget>[
          CheckboxListTile(
            secondary: const Icon(Icons.accessible_forward),
            title: const Text("Um título"),
            subtitle: const Text("Um subtítulo"),
            value: _checkboxValue,
            onChanged: (bool? valor) {
              setState(() {
                _checkboxValue = valor;
              });
            },
          ),
        ],
      ),
    );
  }
}
