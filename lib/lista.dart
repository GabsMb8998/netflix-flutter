import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:professor_netflix/detalhes.dart';

class Filme {
  final String Nome;
  final String genero;
  final String imagem;
  final String descricao;

  //construtor
  Filme ({
    required this.Nome,
    required this.genero,
    required this.imagem,
    this.descricao = ''
});
}

class ListaPage extends StatelessWidget {
  ListaPage({super.key});

  final List<Filme> lista_filmes = [
    // Filme(
    //   Nome: 'Vingadores',
    //   genero: 'Ação',
    //   imagem: 'assets/images/vingadores.webp',
    // ),
    Filme(
      Nome: 'How to train your Dragon',
      genero: 'Ação',
      imagem: 'assets/images/howToTrainYourDragon.jpg',
      descricao: 'banguela :)'
    ),  Filme(
      Nome: 'Haikyuu Movie',
      genero: 'Esportes',
      imagem: 'assets/images/haikyuu.jpg',
      descricao: 'Filme de haikyuu, batalha no lixão :)'
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Lista Filmes',
        style: TextStyle(
          color: Colors.white
        ),
        ),
        backgroundColor: Colors.black,),
      body:

      ListView.builder(
        itemCount: lista_filmes.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetalhesFilmesPage(filme: lista_filmes[index])));
            },
            child:   Container(
              color: Colors.black,
              margin: EdgeInsets.only(top:100, left: 20, right: 20, bottom: 20),
              // width: 50,
              height: 650,
              child: Column(
                  children: [
                    ClipRRect(
                       borderRadius: BorderRadius.circular(15),
                        child: Image.asset(lista_filmes[index].imagem,
                        fit: BoxFit.cover,
                        ),

                    )
   ,
                    Text(lista_filmes[index].Nome, style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                    ),),
                    // Text(lista_filmes[index].genero)
                  ]
              ),
            ),
          );



        }

      ),
    );
  }
}
