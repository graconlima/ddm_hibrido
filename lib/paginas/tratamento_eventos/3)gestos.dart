import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//Exemplo 1: clique simples
/*main(){
  runApp(Container(
      color: Color(0xFF00FF00) ,
      child: GestureDetector(onTap: (){print("Clicado");})
  ));
}*/

//Exemplo 2: clique simples (com filho)
/*void main(){
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
        title: "Ola Mundo!",
        home: Scaffold(
            appBar: AppBar(title: Text("Ola")),
            body: Center(child: GestureDetector(onTap: (){print("Clicado!");}, child: Text("Ola Mundo")))
        )
    );
  }
}*/

//Exemplo 3: clique duplo
/*main(){
  runApp(Container(
      color: Color(0xFF00FF00) ,
      child: GestureDetector(onDoubleTap: (){print("Clique duplo");})
  ));
}*/

//Exemplo 4: arrastar e soltar
/*main(){
  runApp(Container(
      color: Color(0xFF00FF00) ,
      child: GestureDetector(
        onHorizontalDragStart: (DragStartDetails d){
          print("Inicio arrasto horizontal");
          print(d);
        },
        onVerticalDragEnd: (DragEndDetails d){
          print("Fim arrasto vertical");
          print(d);
        },
      )
  ));
}*/

//Exemplo 5 - Clique simples com Alerta
/*void main(){
  runApp(MaterialApp(home: MinhaApp()));
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return Scaffold(
        appBar: AppBar(title: Text("Ola")),
        body: Center(child: GestureDetector(onTap: (){exibirInformacao(bc, "clicado!");}, child: Text("Ola Mundo")))
    );
  }

  void exibirInformacao(BuildContext bc, String informacao){
    var alerta = AlertDialog(title: Text("Informacao"), content: Text(informacao));
    showDialog(context: bc, builder: (bc){return alerta;});
  }
}*/

//Exemplo 6: deslizar com dois alertas
/*void main(){
  runApp(MaterialApp(home: MinhaApp()));
}

class MinhaApp extends StatelessWidget{
  Widget build(BuildContext bc){
    return Scaffold(
        appBar: AppBar(title: Text("Ola")),
        body: Center(child: GestureDetector(
            onHorizontalDragStart: (DragStartDetails dsd){
              exibirInformacao(bc, "Posicao de inicio de arrasto horizontal: "+dsd.toString());
            },
            onHorizontalDragEnd: (DragEndDetails ded){
              exibirInformacao(bc, "Posicao de fim de arrasto horizontal: "+ded.toString());
            },
            onVerticalDragStart: (DragStartDetails dsd){
              exibirInformacao(bc, "Posicao de inicio de arrasto vertical: "+dsd.toString());
            },
            onVerticalDragEnd: (DragEndDetails ded){
              exibirInformacao(bc, "Posicao de fim de arrasto vertical: "+ded.toString());
            },
            child: Text("Ola Mundo")))
    );
  }

  void exibirInformacao(BuildContext bc, String informacao){
    var alerta = AlertDialog(title: Text("Informacao"), content: Text(informacao));
    showDialog(context: bc, builder: (bc){return alerta;});
  }
}*/