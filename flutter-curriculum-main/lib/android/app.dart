import 'package:flutter/material.dart';

import 'pages/home.dart';

class AndroidApp extends StatefulWidget {
  const AndroidApp({Key? key}) : super(key: key);

  @override
  _AndroidAppState createState() => _AndroidAppState();
}

class _AndroidAppState extends State<AndroidApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu Perfil",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const Home(),
    );
  }
}
