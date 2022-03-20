// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Color by Barbosa'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //Aqui é um interruptor para trocar a cor do tema
            Container(
              color: Colors.blueGrey,
              width: double.infinity,
              height: 40,
              child: Switch(
                  value: AppController.instance.isDarkTheme,
                  onChanged: (value) {
                    AppController.instance.changeTheme();
                  }),
            ),
            //Aqui é uma ListView de Containers coloridos
            Container(
                color: Colors.white,
                width: double.infinity,
                height: 610,
                child: Scrollbar(
                  isAlwaysShown: true,
                  child: ListView.builder(
                    itemCount: AppController.instance.lista.length,
                    itemBuilder: (AppController.instance.buildBloco),
                  ),
                ))
          ],
        ),
      ),
      //Sempre que apertar o FloatingButton, uma nova cor surge
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppController.instance.addBloco();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
