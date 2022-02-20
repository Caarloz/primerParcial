import 'package:flutter/material.dart';
import 'package:parcial1/principal/fulParcial.dart';

void main() {
  runApp(parcial1());
}

class parcial1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Parcial I", //Nombre proceso
      home: fulParcial(),
    );
  }
}
