import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Listas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  final int n = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listas"),
      ),
      body: ListView.builder(
        itemCount: n,
        itemBuilder: (context, n) {
          return ListTile(
            title: const Text("sdsdsd"),
            onTap: () {
              showDialog<void>(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Item $n"),
                      actions: [
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Sim"),
                          color: Colors.blue,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Não"),
                          color: Colors.red,
                        ),
                      ],
                    );
                  });
            },
          );
        },
      ),
    );
  }
}
