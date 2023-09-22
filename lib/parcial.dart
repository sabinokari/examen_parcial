import 'package:flutter/material.dart';

class Examen_parcial extends StatefulWidget {
  const Examen_parcial({super.key});

  @override
  State<Examen_parcial> createState() => _Examen_State();
}

class _Examen_State extends State<Examen_parcial> {
  bool isTitleBold = true;
  bool isDescriptionJustify = false;
  double valueRedSlider = 70;
  double valueGreenSlider = 80;

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
            Slider(
              thumbColor: Color.fromARGB(0, 204, 11, 11),
              min: 0,
              max: 100,
              value: valueRedSlider,
              onChanged: (value) {
                print(value);
                valueRedSlider = value;
                setState(() {});
              },
            ),
            Slider(
              min: 0,
              max: 100,
              value: valueGreenSlider,
              onChanged: (value) {
                print(value);
                valueGreenSlider = value;
                setState(() {});
              },
            ),
            TextButton(
              onPressed: () {
                print("Button pressed");
              },
              child: Text("Calcular:"),
            ),
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
