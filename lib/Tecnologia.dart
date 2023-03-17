import 'package:flutter/material.dart';

enum Pirata {robado, chino}

class Tecnologia extends StatefulWidget {
  const Tecnologia({Key? key}) : super(key: key);

  @override
  State<Tecnologia> createState() => _TecnologiaState();
}

class _TecnologiaState extends State<Tecnologia> {
  Pirata _status = Pirata.robado;
  bool _selectedtv = false;
  bool _selectedsp = false;
  bool _selectedcon = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(60,10,60,10),
      children: [
        Text("Aparatos chinos y consolas chipeadas", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.lightGreen), textAlign: TextAlign.center,),
        Image.asset("assets/tecnologia.png", width: 300, height: 300, alignment: Alignment.center,),
        Text("Tipo de producto", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),),
        RadioListTile(
            title: Text("Robado"),
            value: Pirata.robado,
            groupValue: _status,
            onChanged: (Pirata? valor) {
              setState((){
                _status = valor!;
              });
            }),
        RadioListTile(
            title: Text("Chino"),
            value: Pirata.chino,
            groupValue: _status,
            onChanged: (Pirata? valor) {
              setState((){
                _status = valor!;
              });
            }),
        SizedBox(height: 10,),
        CheckboxListTile(
          title: Text("Tele"),
            value: _selectedtv,
            onChanged: (bool? valor){
            setState(() {
              _selectedtv = valor!;
            });
            }),
        CheckboxListTile(
            title: Text("Bocina"),
            value: _selectedsp,
            onChanged: (bool? valor){
              setState(() {
                _selectedsp = valor!;
              });
        }),
        CheckboxListTile(
        title: Text("Play 2 chipeado"),
        value: _selectedcon,
        onChanged: (bool? valor){
        setState(() {
          _selectedcon = valor!;
        });
        }),
      ],
    );
  }
}
