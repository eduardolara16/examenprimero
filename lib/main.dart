import 'package:examen/cambiodemoneda.dart';
import 'package:flutter/material.dart';
import 'package:examen/noticias.dart';
import 'package:examen/Listadetareas.dart';
import 'package:examen/podcast.dart';
import 'package:examen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App CEUTEC',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/noticias': (context) => NoticiasPage(),
        '/cambioMoneda': (context) => CambioMonedaPage(),
        '/listaTareas': (context) => ListaTareasPage(),
        '/podcast': (context) => PodcastApp(),
      },
    );
  }
}



