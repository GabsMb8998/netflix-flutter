import 'package:flutter/material.dart';
import 'package:professor_netflix/lista.dart';
import 'package:google_fonts/google_fonts.dart';

TextEditingController _user = TextEditingController();
TextEditingController _password = TextEditingController();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String usuario_cadastrado = "teste";
  String senha_cadastrada = '123';
  String verificador = '';

  bool Logar(){
    if (_user.text == usuario_cadastrado && _password.text == senha_cadastrada){
      print('Login realizado com sucesso');
      return true;
    }
    else {
      print('Credenciais Erradas');
      setState(() {
        verificador  = 'Credenciais Erradas';

      });
        return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          Positioned.fill(child: Image.asset('assets/images/wallpaper.jpg',
          fit: BoxFit.cover,)),

          Positioned(
              top: 70,
              left: 20,
              right: 100,
              bottom: 0,
              
              child: Text('Welcome \nBack.', style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),)
              ),

          Positioned(
            top: 400, // Posição do topo
            left: 0, // Margem à esquerda
            right: 0, // Margem à direita
            bottom: 0,

            child: Container(
              padding: EdgeInsets.all(30),
              decoration:
              BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(150),
                )
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 20),

                  Text('Log in', style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  )),

                  SizedBox(height: 50),
                  Container(
                    child: Column(
                      children: [
                      TextField(
                                decoration:
                                InputDecoration(
                                  hintText: 'Insira seu usuario',
                                  border: OutlineInputBorder(),
                                ),
                                controller: _user
                            ),
                            SizedBox(height: 30),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Insira sua senha',
                                border: OutlineInputBorder(),
                              ),
                              controller: _password,
                              obscureText: true,
                            ),
                      ],
                    ),
                  ),

              SizedBox(height: 100),

              Center(
                child:  ElevatedButton(
                  onPressed: () {
                    if (Logar()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListaPage()),
                      );
                    }
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20, // Tamanho da fonte
                      fontWeight: FontWeight.bold, // Peso da fonte (negrito)
                      color: Colors.white, // Cor do texto

                    ),
                  ) ,

                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 140, vertical: 10)),
                  ),

                )
                ,
              )

                  //     ElevatedButton(onPressed: (){
                //   if (Logar()){
                //     Navigator.push(context, MaterialPageRoute(builder: (context)=>ListaPage()));
                //   };
                // },

                ],
              ),
            ),
          )
        ],
      ),
        
       
      );
  }
}
