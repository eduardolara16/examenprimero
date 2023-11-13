import 'package:flutter/material.dart';
class NoticiasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de noticias'),
        backgroundColor: Colors.blue, // Example color
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          NoticiaCard(
            titulo: 'Matricula abierta',
            fecha: '30 nov, 2023',
            contenido:
                'Matriculate ya para este Q1 del 2024.',
            imagenUrl:
                'https://nidobrighton.com/wp-content/uploads/2019/11/matricula-abierta-1.png', // Reemplaza con tu URL de imagen
          ),
          // Add three more NoticiaCard widgets
          NoticiaCard(
            titulo: 'Fin de semana de examenes',
            fecha: '13 nov, 2023',
            contenido: 'Enhorabuena, felicidades por haber culminado tus examenes.',
            imagenUrl: 'https://www.pikpng.com/pngl/m/526-5263364_felicidades-palavra-felicidades-clipart.png',
          ),
          NoticiaCard(
            titulo: 'Inicio de semana de examenes',
            fecha: '05nov, 2023',
            contenido: 'Exitos en esta semana de examenes.',
            imagenUrl: 'https://448654bc54.cbaul-cdnwnd.com/e19c38581a5a4e1d1fa1ffcd846c9ea6/system_preview_detail_200000097-1db881eb36-public/Que%20significa%20tener%20exito.png',
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
  final String? imagenUrl; // Nueva propiedad para la URL de la imagen

  const NoticiaCard({
    required this.titulo,
    required this.fecha,
    required this.contenido,
    this.imagenUrl, // Parámetro opcional para la URL de la imagen
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
            if (imagenUrl != null)
              Image.network(
                imagenUrl!,
                height: 150.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            SizedBox(height: 8.0),
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
            Divider(color: Colors.grey), // Divider for visual separation
            SizedBox(height: 8.0),
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
