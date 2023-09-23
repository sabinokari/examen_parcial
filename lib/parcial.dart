import 'package:flutter/material.dart';

class Examen_parcial extends StatefulWidget {
  const Examen_parcial({super.key});

  @override
  State<Examen_parcial> createState() => _Examen_State();
}

class _Examen_State extends State<Examen_parcial> {
  bool isTitleBold = true;
  bool isDescriptionJustify = false;
  double _sliderValue = 70;
  double _sliderValue2 = 80;

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
              'Peso: $_sliderValue',
              style: TextStyle(fontSize: 20.0),
            ),
            Slider(
              value: _sliderValue,
              onChanged: (newValue) {
                setState(() {
                  _sliderValue = newValue;
                });
              },
              min: 0,
              max: 500,
            ),
            Text(
              'Talla en CM: $_sliderValue2',
              style: TextStyle(fontSize: 20.0),
            ),
            Slider(
              value: _sliderValue2,
              onChanged: (newValue) {
                setState(() {
                  _sliderValue2 = newValue;
                });
              },
              min: 0,
              max: 300,
            ),
            TextButton(
                onPressed: () {},
                child: ElevatedButton(
                    onPressed: () {
                      print('Botón presionado');
                    },
                    child: Text("Calcular:"))),
            Text(
              "Resultado:",
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
