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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumo Serviço Avançado"),
      ),
      body: FutureBuilder<List<Post>>(
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
                  title: Text(snapshot.data![index].title),
                );
              });
        },
      ),
    );
  }
}
