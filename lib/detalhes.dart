import 'package:flutter/material.dart';
import 'package:professor_netflix/lista.dart';

class DetalhesFilmesPage extends StatelessWidget {

  final Filme filme;

  const DetalhesFilmesPage({super.key, required this.filme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(filme.Nome)),

      body: Center(
        child: Column(
          children: [
            Image.asset(filme.imagem),
            Text(filme.Nome, style: TextStyle(
              fontSize: 24,
            )),
            Text(filme.descricao)
          ],
        ),
      ),



    );
  }
}
