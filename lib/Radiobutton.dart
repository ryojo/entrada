import 'package:flutter/material.dart';

class Radiou extends StatefulWidget {
  @override
  _RadiouState createState() => _RadiouState();
}

class _RadiouState extends State<Radiou> {
  String _escolhaUsuario;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("entrada de dados Radio"),
            backgroundColor: Colors.red,

          ),
          body: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
            ),
             child: Column(
             
             
               children: <Widget>[
                
                RadioListTile(
                  title: Text("Masculino"),
                  value: "M",
                 groupValue: _escolhaUsuario,
                  onChanged: (escolha){
                      setState(() {
                        _escolhaUsuario = escolha;
                      });
                  }
                  
                  ),
                  RadioListTile(
                  title: Text("Feminino"),
                  value: "f",
                   
                 groupValue: _escolhaUsuario,
                  onChanged: (escolha){
                      _escolhaUsuario = escolha;
                  }
                  
                  ),
                RaisedButton(
                  onPressed:(){
                    print("Resultado: "+ _escolhaUsuario );
                  } ,
                child: Text("Salvar",
                style: TextStyle(
                  fontSize: 20
                ),),
                )

                /*
                Text("Masculino"),
                Radio(value: "M",
                 groupValue: _escolhaUsuario ,
                  onChanged: (String escolha){
                    setState(() {
                      _escolhaUsuario = escolha;
                    });
                  }
                  
                  ),
            Text("Feminino"),
                Radio(value: "f",
                 groupValue: _escolhaUsuario ,
                  onChanged: (String escolha){
                    setState(() {
                      _escolhaUsuario = escolha;
                    });
                  }
                  
                  )


              */ ],
             ),
          ),
    );
  }
}