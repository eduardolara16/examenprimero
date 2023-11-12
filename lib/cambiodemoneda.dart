import 'package:flutter/material.dart';

class CambioMonedaPage extends StatefulWidget {
  @override
  _CambioMonedaPageState createState() => _CambioMonedaPageState();
}

class _CambioMonedaPageState extends State<CambioMonedaPage> {
  String monedaSeleccionada = 'Dólar'; // Valor predeterminado
  double tasaDolar = 24.70;
  double tasaEuro = 26.40;
  double cantidadConvertir = 0;
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de Moneda'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Seleccionar moneda:', style: TextStyle(fontSize: 18.0)),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      monedaSeleccionada = 'Dólar';
                    });
                  },
                  child: Text('Dólar'),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      monedaSeleccionada = 'Euro';
                    });
                  },
                  child: Text('Euro'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Compra: L. 24.68', style: TextStyle(fontSize: 14.0)),
                Spacer(),
                Text('Venta: L. 24.80', style: TextStyle(fontSize: 14.0)),
              ],
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Ingrese la cantidad a convertir'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                cantidadConvertir = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  resultado = (monedaSeleccionada == 'Dólar') ? cantidadConvertir * tasaDolar : cantidadConvertir * tasaEuro;
                });
              },
              child: Text('Convertir a Lempiras'),
            ),
            SizedBox(height: 16.0),
            Text('Resultado de la conversión: $resultado Lempiras'),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'App CEUTEC',
    home: CambioMonedaPage(),
));
}
