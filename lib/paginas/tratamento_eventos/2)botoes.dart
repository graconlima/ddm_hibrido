<<<<<<< HEAD
import 'package:ddm_hibrido/dados_compartilhados/modelos/calculadora.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
=======
import 'package:flutter/material.dart';
>>>>>>> origin/master
//Exemplo 1 - botoes
/*void main(){
  runApp(MinhaWidget());
}

class MinhaWidget extends StatelessWidget{
  Widget build(BuildContext bc){
    return MaterialApp(
      title: "Ola Mundo!",
      home:
        Scaffold(
          appBar: AppBar(title: Text("Ola")),
          body:
            Center(
              child:
                IconButton(
                  icon: Icon(Icons.add_a_photo),
                  onPressed: (){print("Pressionado!");}
                )
            )
        )
    );
  }
}*/

//Exemplo 2: IMC 2.0: calculando com botao
<<<<<<< HEAD
void main(){
=======
/*void main(){
>>>>>>> origin/master
  runApp(IMC());
}

class IMC extends StatelessWidget{
<<<<<<< HEAD
  double a = 1.70, p = 70.0, imc = 0.0;
=======
  double a = 1.70, p = 70.0;
>>>>>>> origin/master

  Widget build(BuildContext bc) {
    return MaterialApp(home: Scaffold(body: Column(
    children: <Widget>[
      TextField(
        onChanged: (texto) {a = double.parse(texto);},
<<<<<<< HEAD
        decoration: InputDecoration(icon:Icon(Icons.accessibility), hintText: "Altura"),
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp("[0-9.]+"))],
=======
        decoration: InputDecoration(icon:Icon(Icons.accessibility), hintText: "Altura")
>>>>>>> origin/master
      ),
      TextField(
        onChanged: (texto) {p = double.parse(texto);},
        decoration: InputDecoration(icon:Icon(Icons.scale), hintText: "Peso:")
      ),
<<<<<<< HEAD
      FloatingActionButton(
        child: Text("IMC"),
        onPressed: () {
          imc = Calculadora.imc(a, p);
          print("IMC: ${Calculadora.imc(a, p)}");
        }),
      Text("$imc")
    ]
    )));
  }
}
=======
      FloatingActionButton(child: Text("IMC"), onPressed: (){calcular();})
    ]
    )));
  }

  void calcular(){
    double imc = p/(a*a);print("IMC: $imc");
  }
}*/
>>>>>>> origin/master
