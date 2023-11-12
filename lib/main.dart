import 'package:examen/cambiodemoneda.dart';
import 'package:flutter/material.dart';
import 'package:examen/noticias.dart';
import 'package:examen/Listadetareas.dart';
import 'package:examen/podcast.dart';

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
        '/podcast': (context) => PodcastPage(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App CEUTEC'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('CEUTEC'),
              accountEmail: Text('Ceutec.edu.hn'),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage(''), // Agrega la URL de la imagen.
              ),
            ),
            ListTile(
              title: Text('Noticias'),
              leading: Icon(Icons.newspaper),
              onTap: () {
                Navigator.pushNamed(context, '/noticias');
              },
            ),
            ListTile(
              title: Text('El cambio de monedas'),
              leading: Icon(Icons.currency_exchange),
              onTap: () {
                Navigator.pushNamed(context, '/cambioMoneda');
              },
            ),
            ListTile(
              title: Text('Lista de tareas'),
              leading: Icon(Icons.list),
              onTap: () {
                Navigator.pushNamed(context, '/listaTareas');
              },
            ),
            ListTile(
              title: Text('Podcast'),
              leading: Icon(Icons.headset),
              onTap: () {
                Navigator.pushNamed(context, '/podcast');
              },
            ),
          ],
        ),
      ),
    );
  }
}

