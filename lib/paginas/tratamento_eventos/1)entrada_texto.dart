import 'package:flutter/material.dart';
//Exemplo 1: lendo entrada de usuario e calculando IMC
<<<<<<< HEAD
void main(){
  double a = 1.70, p = 70.0;
  runApp(MaterialApp(home: Scaffold(body: Center(child: Column(
=======
/*void main(){
  double a = 1.70, p = 70.0;
  runApp(MaterialApp(home: Scaffold(body: Column(
>>>>>>> origin/master
      children: <Widget>[
        TextField(
            onChanged: (texto) {a = double.parse(texto); double imc = p/(a*a);print("IMC: $imc");},
            decoration: InputDecoration(icon:Icon(Icons.accessibility), hintText: "Altura")
        ),
        TextField(
            onChanged: (texto) {p = double.parse(texto); double imc = p/(a*a);print("IMC: $imc");},
            decoration: InputDecoration(icon:Icon(Icons.scale), hintText: "Peso:")
        )
      ]
<<<<<<< HEAD
  ))))
  );
}
=======
  )))
  );
}*/
>>>>>>> origin/master
