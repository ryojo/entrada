

import 'package:entrada/EntradaCheckbox.dart';
import 'package:entrada/EntradaSlider.dart';
import 'package:entrada/EntradaSwitch.dart';
import 'package:entrada/Radiobutton.dart';
import 'package:flutter/material.dart';

void main (){

runApp(

MaterialApp(
home: EntradaSlider(),
//CheckBox() ,
 //EntradaSwitch(),
// Radiou(), 

),

);


}

// classe do campo texto 
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    TextEditingController _textEditingController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Entrada de Dados"),
          backgroundColor: Colors.blue,
        ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(32),
          child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: "Digite um valor"
          ),
          //enabled: false,
          //maxLength: 2,
          //maxLengthEnforced:false ,
         /* style: TextStyle(
            fontSize: 25,
            color: Colors.green,

          ),*/
          //obscureText: true,
          /*onChanged: (String e ){
          print("valor digitado: "+ e);
          },
          */
          
          onSubmitted: (String e){
              print("valor digitado" + e);
          },
          controller:_textEditingController ,
          ),
          ),
          RaisedButton(onPressed: (){
            print("VALOR DIGITADO: "+ _textEditingController.text);
          },
          child:Text("Salvar"),
          color: Colors.lightGreen,
          
          )
          
        ],
      ) ,

    );
  }
}