import 'package:flutter/material.dart';
import 'package:examen_parcial/parcial.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Examen_parcial(),
    );
  }
}
