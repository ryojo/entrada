import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
 bool _selecionado_brasileiro = false;
 bool _selecionado_mexicano = false;
 bool _ComidaBrasileira= false;
 bool _ComidaMexicana = false;
 
 
var _resultado = "sdadas";

void _Action (){

 if (_ComidaBrasileira){
   print("ativado comida brasileira");
 } else {
   print('desativado');
 }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Entrada Checkbox"),
          backgroundColor: Colors.brown,
        ),
       body: Container(
         padding: EdgeInsets.all(16),
         decoration: BoxDecoration(
           border:Border.all(width: 3 ,color:Colors.amber),
              ),
            child: Column(
              children: <Widget>[
              /*  Checkbox(value: _estado, onChanged: (bool valor){
                     setState(() {
                       _estado = valor;
                     });
                            
                     
                   // print("CheckBox: " +  );
                })
                 */
                 CheckboxListTile(
                    title: Text("Comida brasileira"),
                    subtitle: Text("Melhor comida do mundo!"), // subtitulo
                   activeColor: Colors.red, // cor da caixa
                   selected:_selecionado_brasileiro, // ao selecionar os titulos e sub ficaram colorido.
                    secondary: Icon(Icons.add_box,),
                    value: _ComidaBrasileira,
                   onChanged: (bool resultado){
                      setState(() {
                        _selecionado_brasileiro = resultado;
                        _ComidaBrasileira = resultado;
                      
                      });
                   }

                   
                   ),


CheckboxListTile(
                    title: Text("Comida Mexicana"),
                    subtitle: Text("Melhor comida do mundo!"), // subtitulo
                   activeColor: Colors.red, // cor da caixa
                   selected:_selecionado_mexicano, // ao selecionar os titulos e sub ficaram colorido.
                    secondary: Icon(Icons.add_box,),
                    value: _ComidaMexicana,
                   onChanged: (bool resultado){
                      setState(() {
                        _selecionado_mexicano = resultado;
                        _ComidaMexicana= resultado;
                      });
                   }
                ),
              Padding(padding: EdgeInsets.only(bottom: 15),
              child :RaisedButton(
                
                     onPressed:_Action,
                  child: Text("Resultado",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                  ),  
                  color: Colors.red, 
                ),
              ),
                
                Text(_resultado,
                style: TextStyle(
                 fontSize: 19,
                 fontWeight: FontWeight.bold
                         
                ),
              
                ),


              ],
            ),
       ) , 

    );
  }
}