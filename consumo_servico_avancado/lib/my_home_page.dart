// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:consumo_servico_avancado/post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  final String _urlBase = "https://jsonplaceholder.typicode.com";

  Future<List<Post>> _recuperarPostagens() async {
    String urlPostagens = "$_urlBase/posts";
    http.Response response = await http.get(Uri.parse(urlPostagens));
    var result = jsonDecode(response.body);
    List<Post> posts = [];
    for (var post in result) {
      posts.add(Post(post['userId'], post['id'], post['title'], post['body']));
    }
    return posts;
  }

  _post(Post newPost) async {
    http.Response response = await http.post(
      Uri.parse("$_urlBase/posts"),
      headers: {"Content-type": "application/json; charset=UTF-8"},
      body: jsonEncode({
        "userId": newPost.userId,
        "id": newPost.id,
        "title": newPost.title,
        "body": newPost.body,
      }),
    );
    print(response.statusCode);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumo Serviço Avançado"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    _post(
                      Post(120, 5, "", ""),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  child: const Text("Salvar"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Editar"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.redAccent),
                  ),
                  child: const Text("Remover"),
                ),
              ),
            ],
          ),
          Expanded(
            child: FutureBuilder<List<Post>>(
              future: _recuperarPostagens(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                  case ConnectionState.active:
                  case ConnectionState.waiting:
                    return const Center(child: CircularProgressIndicator());
                  case ConnectionState.done:
                    if (snapshot.hasError) {
                      print("Houve um erro!");
                    } else {
                      print("Lista carregada!");
                    }
                    break;
                }
                return ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("$index ${snapshot.data![index].title}"),
                        subtitle: Text(snapshot.data![index].body),
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
