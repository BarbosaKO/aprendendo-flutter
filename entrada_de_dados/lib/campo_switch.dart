import 'package:flutter/material.dart';

class CampoSwitch extends StatefulWidget {
  const CampoSwitch({Key? key}) : super(key: key);

  @override
  State<CampoSwitch> createState() => _CampoSwitchState();
}

class _CampoSwitchState extends State<CampoSwitch> {
  bool _valorSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teste com Switch"),
      ),
      body: Column(
        children: <Widget>[
          SwitchListTile(
            title: const Text("Campo 1"),
            value: _valorSwitch,
            onChanged: (bool valor) {
              setState(() {
                _valorSwitch = valor;
              });
            },
          ),
        ],
      ),
    );
  }
}
