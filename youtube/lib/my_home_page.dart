import 'package:flutter/material.dart';
import 'package:youtube/biblioteca.dart';
import 'package:youtube/create_video.dart';
import 'package:youtube/shorts.dart';
import 'package:youtube/inicio.dart';
import 'package:youtube/inscricoes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _indexNavBarBottom = 0;
  List<dynamic> telas = [
    const Inicio(),
    const Shorts(),
    const CreateVideo(),
    const Inscricoes(),
    const Biblioteca(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.grey,
          opacity: 1,
        ),
        title: Image.asset(
          "images/youtube.png",
          height: 22,
          width: 98,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.video_camera_back_rounded),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle_rounded),
            ),
          ),
        ],
      ),
      body: telas[_indexNavBarBottom],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexNavBarBottom,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        onTap: (index) {
          if (index == 2) {
            showDialog<void>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Create'),
                  content: SizedBox(
                    height: 120,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.whatshot),
                            ),
                            const Text("Create a Short"),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.upgrade_outlined),
                            ),
                            const Text("Upload a Video"),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.stream),
                            ),
                            const Text("Go live")
                          ],
                        ),
                      ],
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                );
              },
            );
          } else {
            setState(() {
              _indexNavBarBottom = index;
            });
          }
        },
        items: const [
          BottomNavigationBarItem(
            label: "Inicio",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Shorts",
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.add_circle_outline,
              size: 48,
            ),
          ),
          BottomNavigationBarItem(
            label: "Inscrições",
            icon: Icon(Icons.subscriptions),
          ),
          BottomNavigationBarItem(
            label: "Biblioteca",
            icon: Icon(Icons.folder),
          ),
        ],
      ),
    );
  }
}
