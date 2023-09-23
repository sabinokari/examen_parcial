import 'package:flutter/material.dart';

class Examen_parcial extends StatefulWidget {
  const Examen_parcial({super.key});

  @override
  State<Examen_parcial> createState() => _Examen_State();
}

class _Examen_State extends State<Examen_parcial> {
  bool isTitleBold = true;
  bool isDescriptionJustify = false;
  double _Peso = 70;
  double _Talla = 80;
  double _resultado = 0.0;
  String mensaje = "00";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Bienvenido, Selecciona tu peso y altura:",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight:
                    isTitleBold == true ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            Text(
              'Peso: $_Peso',
              style: TextStyle(fontSize: 20.0),
            ),
            Slider(
              value: _Peso,
              onChanged: (newValue) {
                setState(() {
                  _Peso = newValue;
                });
              },
              min: 0,
              max: 500,
            ),
            Text(
              'Talla en CM: $_Talla',
              style: TextStyle(fontSize: 20.0),
            ),
            Slider(
              value: _Talla,
              onChanged: (newValue) {
                setState(() {
                  _Talla = newValue;
                });
              },
              min: 0,
              max: 300,
            ),
            TextButton(
                onPressed: () {},
                child: ElevatedButton(
                    onPressed: () {
                      _resultado = _Peso / (_Talla * _Talla);
                      if (_resultado >= 25) mensaje = "Sobre peso";
                    },
                    child: Text("Calcular:"))),
            Text(
              "Resultado:  $_resultado",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight:
                    isTitleBold == true ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
