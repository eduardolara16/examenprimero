import 'package:flutter/material.dart';

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