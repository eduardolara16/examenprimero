import 'package:flutter/material.dart';

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