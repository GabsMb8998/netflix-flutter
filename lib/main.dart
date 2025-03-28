import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:professor_netflix/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme()
        ),
        home: LoginPage()    //QUAL A TELA QUE IRA INICIAR MEU APP
    );


  }
}
