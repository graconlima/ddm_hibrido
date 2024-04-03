import 'package:flutter/material.dart';

//Exemplo 1: as classes StatefulWidget e State
/*void main() => runApp(MinhaAplicacao());

class MinhaAplicacao extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MinhaHomePage());
  }
}

//StatefulWidget
class MinhaHomePage extends StatefulWidget{
  MinhaHomePageEstado createState() => MinhaHomePageEstado();
}

class MinhaHomePageEstado extends State<MinhaHomePage>{
  int contador = 0;
  void incrementoContador(){
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:Text("$contador")),
      floatingActionButton: FloatingActionButton(onPressed: incrementoContador),
    );
  }
}*/

//Exemplo 2.1: IMC (sem estado)
/*void main(){
  runApp(IMC());
}

class IMC extends StatelessWidget{
  double a = 1.70, p = 70.0, imc = 0.0;
  String textoIMC = "";

  atualizarTexto(){
    textoIMC = "O IMC e $imc";
  }

  Widget build(BuildContext bc) {
    return MaterialApp(home: Scaffold(body: Column(
        children: <Widget>[
          TextField(
              onChanged: (texto) {a = double.parse(texto);},
              decoration: InputDecoration(icon:Icon(Icons.accessibility), hintText: "Altura")
          ),
          TextField(
              onChanged: (texto) {p = double.parse(texto);},
              decoration: InputDecoration(icon:Icon(Icons.scale), hintText: "Peso:")
          ),
          Text("$textoIMC"),
          FloatingActionButton(child: Text("IMC"), onPressed: (){calcular();})
        ]
    )));
  }

  void calcular(){
    imc = p/(a*a);
    print("IMC: $imc");
    atualizarTexto();
  }
}*/

//Exemplo 2.2: IMC (com estado)
/*void main(){
  runApp(AtualizadorTexto());
}

class AtualizadorTexto extends StatefulWidget{
  AtualizadorTextoEstado createState() => AtualizadorTextoEstado();
}

class AtualizadorTextoEstado extends State{
  double a = 1.70, p = 70.0, imc = 0;
  String textoIMC = "";

  atualizarTexto(){
    setState(() {
      textoIMC = "O IMC e $imc";
    });
  }

  Widget build(BuildContext bc) {
    return MaterialApp(home: Scaffold(body: Column(
        children: <Widget>[
          TextField(
              onChanged: (texto) {a = double.parse(texto);},
              decoration: InputDecoration(icon:Icon(Icons.accessibility), hintText: "Altura")
          ),
          TextField(
              onChanged: (texto) {p = double.parse(texto);},
              decoration: InputDecoration(icon:Icon(Icons.scale), hintText: "Peso:")
          ),
          Text("$textoIMC"),
          FloatingActionButton(child: Text("IMC"), onPressed: (){calcular();})
        ]
    )));
  }

  void calcular(){
    imc = p/(a*a);
    print("IMC: $imc");
    atualizarTexto();
  }
}*/

//Exemplo 3 (extra): IMC com classificação
/*void main(){
  runApp(AtualizadorTexto());
}

class AtualizadorTexto extends StatefulWidget{
  AtualizadorTextoEstado createState() => AtualizadorTextoEstado();
}

class AtualizadorTextoEstado extends State{
  double a = 1.70, p = 70.0, imc = 0;
  String textoIMC = "", classificacao = "";
  atualizarTexto(){
    setState(() {
      if(imc < 18.5){
        classificacao = "Magreza";
      }else if(imc >= 18.5 && imc <= 24.9){
        classificacao = "Normal";
      }else if(imc >= 25.0 && imc <= 29.9){
        classificacao = "Sobrepeso";
      }else if(imc >= 30.0 && imc <= 39.9){
        classificacao = "Obesidade";
      }else if(imc > 40.0){
        classificacao = "Obesidade Grave";
      }

      textoIMC = "O IMC calculado e $imc, e a classificacao e $classificacao";
    });
  }

  Widget build(BuildContext bc){
    return MaterialApp(home: Scaffold(body: Column(
      children: <Widget>[
        TextField(
          onChanged: (texto){a = double.parse(texto); calculoIMC();},
          decoration: InputDecoration(icon: Icon(Icons.accessibility), hintText: "Altura"),
        ),
        TextField(
          onChanged: (texto){p = double.parse(texto); calculoIMC();},
          decoration: InputDecoration(icon: Icon(Icons.alternate_email_sharp), hintText: "Peso"),
        ),
        Text("$textoIMC")
      ],
    )));
  }

  void calculoIMC(){
    imc = p/(a*a);
    atualizarTexto();
  }
}*/

//Exemplo 4: Slider
void main() {
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Exemplo Ckeckbox",
        home: Scaffold(
            appBar: AppBar(title: Text("Barra")),
            body: Center(child: WidgetEstado())));
  }
}

class WidgetEstado extends StatefulWidget {
  _WidgetEstado createState() => _WidgetEstado();
}

class _WidgetEstado extends State {
  int valor = 7;

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Slider(
            value: valor.toDouble(),
            min: 0,
            max: 10,
            activeColor: Colors.amber,
            inactiveColor: Colors.black45,
            label: "${valor.round()}",
            onChanged: (double v) {
              setState(() {
                valor = v.round();
              });
            },
            semanticFormatterCallback: (double v) {
              return "${v.round()}";
            }
          ),
          Text("$valor", style: TextStyle(fontSize: 30))
        ]
      )
    );
  }
}
