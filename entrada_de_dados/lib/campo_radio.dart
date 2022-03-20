import 'package:flutter/material.dart';

class CampoRadio extends StatefulWidget {
  const CampoRadio({Key? key}) : super(key: key);

  @override
  State<CampoRadio> createState() => _CampoRadioState();
}

class _CampoRadioState extends State<CampoRadio> {
  int? _groupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teste de Radio Button"),
      ),
      body: Column(
        children: <Widget>[
          RadioListTile(
            title: const Text("Titulo Opção 1"),
            value: 1,
            groupValue: _groupValue,
            onChanged: (int? value) {
              setState(() {
                _groupValue = value;
              });
            },
          ),
          RadioListTile(
            title: const Text("Titulo Opção 2"),
            value: 2,
            groupValue: _groupValue,
            onChanged: (int? value) {
              setState(() {
                _groupValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
