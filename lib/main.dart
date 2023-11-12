import 'package:flutter/material.dart';

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

class CambioMonedaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de monedas'),
      ),
      body: Center(
        child: Text('Conversion de cambio de monedas'),
      ),
    );
  }
}

class NoticiasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          NoticiaCard(
            titulo: 'Matricula Abierta',
            fecha: '30 nov, 2023',
            contenido:
                'No te quedes estancado, ven y aprovecha los descuentos antes de que acabe el año y matriculate, aspira a grandes metas el proximo año.',
          ),
          NoticiaCard(
            titulo: 'Final de semana de examenes',
            fecha: '13 nov, 2023',
            contenido:
                'Damos por concluida la semana de examenes, esperamos les haya ido muy bien.',
          ),
          SizedBox(height: 16.0),
          NoticiaCard(
            titulo: 'Semana de examenes',
            fecha: '05 nov, 2023',
            contenido:
                'Damos inicio una vez a la semana de examenes tan esperada a la mitad del periodo, mas cerca que nunca, estudia y tendras exito.',
          ),
        ],
      ),
    );
  }
}

class NoticiaCard extends StatelessWidget {
  final String titulo;
  final String fecha;
  final String contenido;

  const NoticiaCard({
    required this.titulo,
    required this.fecha,
    required this.contenido,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              fecha,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              contenido,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

class Noticias extends StatelessWidget {
  final List<Noticia> noticias;

  const Noticias({Key? key, required this.noticias}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Image.network(noticias[index].imagenUrl),
                Text(noticias[index].titulo),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(noticias[index].descripcion),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Noticia {
  final String titulo;
  final String descripcion;
  final String imagenUrl;

  Noticia({
    required this.titulo,
    required this.descripcion,
    required this.imagenUrl,
  });
}

class ListaTareasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TareaCard(
            nombre: 'Matematicas',
            descripcion: 'Realize los ejercicios del libro de la pagina 136',
            fecha: '10 nov, 2023',
            url: 'https://example.com',
          ),
          SizedBox(height: 16.0),
          TareaCard(
            nombre: 'Español',
            descripcion: 'Investigar como se usan los signos de exclamacion',
            fecha: '9  nov, 2023',
            url: 'https://example.com',
          ),

          SizedBox(height: 16.0),
          TareaCard(
            nombre: 'Quimica',
            descripcion: 'Investigue modelos atomicos',
            fecha: '7 nov, 2023',
            url: 'https://example.com',
          ),
          SizedBox(height: 16.0),
          TareaCard(
            nombre: 'Fisica',
            descripcion: 'Hacer ejercicios del libro de la pagina 206 de la caida del pendulo',
            fecha: '6 nov, 2023',
            url: 'https://example.com',
          ),
          SizedBox(height: 16.0),
          TareaCard(
            nombre: 'Biologia',
            descripcion: 'Haga un mapa conceptual sobre la Ecologia',
            fecha: '4 nov, 2023',
            url: 'https://example.com',
          ),
          SizedBox(height: 16.0),
          TareaCard(
            nombre: 'Ingles',
            descripcion: 'Grabar un video de minimo tres minutos donde hable acerca de usted y que hace los fines de semana',
            fecha: '4 nov, 2023',
            url: 'https://example.com',
          ),
          // Agrega m s ejemplos seg n sea necesario
        ],
      ),
    );
  }
}

class TareaCard extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String fecha;
  final String url;

  const TareaCard({
    required this.nombre,
    required this.descripcion,
    required this.fecha,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  nombre,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.date_range, color: Colors.grey),
                    SizedBox(width: 4.0),
                    Text(
                      fecha,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Icon(Icons.link, color: Colors.blue),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              descripcion,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.star, color: Colors.yellow),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PodcastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Podcast'),
      ),
      body: Center(
        child: Text('Seccion de podcast '),
      ),
    );
  }
}
