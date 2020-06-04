import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
 double _valor = 0 ;
String label = "Valor selecionado: ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada Slider"),
        backgroundColor: Colors.blue,
        ),
        body:Container(
          padding: EdgeInsets.all(60),
          child: Column(
            children: <Widget>[
             Slider(
               value: _valor ,
               min: 0,
               max:10,
               activeColor: Colors.black,// colorir o botao slider
               inactiveColor: Colors.deepPurple, //colorir a linha do slider
               label: label + _valor.toString(),

               divisions: 10, // mantendo uma divisão
              onChanged:(double resultado){
                setState(() {
                  _valor = resultado;
                  print(_valor);
                });
                    
              }
              )
               
            ],
          ),
        ) ,
    );
  }
}