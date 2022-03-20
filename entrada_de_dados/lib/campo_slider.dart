import 'package:flutter/material.dart';

class CampoSlider extends StatefulWidget {
  const CampoSlider({Key? key}) : super(key: key);

  @override
  State<CampoSlider> createState() => _CampoSliderState();
}

class _CampoSliderState extends State<CampoSlider> {
  double _resultSlider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teste de Slider"),
      ),
      body: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(32)),
          Slider(
            value: _resultSlider,
            max: 10,
            min: 0,
            divisions: 10,
            label: _resultSlider.toString(),
            activeColor: Colors.amber,
            thumbColor: Colors.greenAccent,
            onChanged: (double valor) {
              setState(() {
                _resultSlider = valor;
              });
            },
          ),
        ],
      ),
    );
  }
}
