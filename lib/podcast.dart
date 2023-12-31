import 'package:flutter/material.dart';

void main() {
  runApp(PodcastApp());
}

class PodcastApp extends StatelessWidget {
  const PodcastApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context); // Regresar al menú principal
                },
              ),
              Text('Podcasts'),
            ],
          ),
        ),
        body: Column(
          children: [
            PodcastCard(
              artista: 'Nostalgia RMX',
              musica: 'Flow GPT',
              imagenUrl:
                  'https://ds-images.bolavip.com/news/image?src=https://images.bolavip.com/webp/spo/full/SPO_20231108_SPO_48635_Captura-de-pantalla-2023-11-08-131114.webp&width=412&height=416',
            ),
            SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Lógica para agregar música
                  },
                  child: Text('Agregar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Lógica para controlar el volumen
                  },
                  child: Text('Eliminar'),
                ),
              ],
            ),
            SizedBox(height: 24.0),
            AudioControls(),
            SizedBox(height: 24.0),
            AudioProgressBar(),
            SizedBox(height: 24.0),
            AudioOptions(),
          ],
        ),
      ),
    );
  }
}

// Resto del código permanece igual


class PodcastCard extends StatelessWidget {
  final String artista;
  final String musica;
  final String imagenUrl;

  const PodcastCard({
    required this.artista,
    required this.musica,
    required this.imagenUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage(imagenUrl),
                ),
                SizedBox(width: 32.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      artista,
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      musica,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AudioControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.skip_previous),
            onPressed: () {
              // Lógica para retroceder la música
            },
            iconSize: 50.0,
          ),
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () {
              // Lógica para reproducir la música
            },
            iconSize: 120.0,
          ),
          IconButton(
            icon: Icon(Icons.fast_forward),
            onPressed: () {
              // Lógica para avanzar la música
            },
            iconSize: 50.0,
          ),
        ],
      ),
    );
  }
}

class AudioProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          LinearProgressIndicator(
            value: 0.5,
          ),
        ],
      ),
    );
  }
}

class AudioOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Repeat', style: TextStyle(fontSize: 16.0)),
              Spacer(), // Esto coloca Repeat en la izquierda y el control en la derecha
              Checkbox(
                value: true,
                onChanged: (value) {
                  // Lógica para habilitar/deshabilitar la repetición
                },
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Divider(thickness: 4.0),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shuffle', style: TextStyle(fontSize: 16.0)),
              Spacer(), // Esto coloca Shuffle en la izquierda y el control en la derecha
              Checkbox(
                value: false,
                onChanged: (value) {
                  // Lógica para habilitar/deshabilitar el modo aleatorio
                },
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Divider(thickness: 4.0),
        ],
      ),
    );
  }
}
