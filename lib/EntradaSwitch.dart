import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
 bool _onNotificacao = false;
 bool _onConfiguracao = false;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text("Switch"),
          backgroundColor: Colors.cyan,
        ),

        body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
              SwitchListTile(
              title: Text("Receber notificações"),
              
              value:_onNotificacao ,
               onChanged: (bool resultado){
                setState(() {
                  _onNotificacao = resultado;
                print(_onNotificacao); 
                });
                   }
               ),
               SwitchListTile(
                 title: Text("Configurações"),
                 value: _onConfiguracao,
                  onChanged: (bool resultado1){
                        setState(() {
                          _onConfiguracao = resultado1;
                           print(_onConfiguracao);
                        });
                  }
                  )
               
            
          ],
        ),
        ),
     );
  }
}