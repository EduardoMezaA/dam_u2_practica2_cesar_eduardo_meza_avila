import 'package:dam_u2_practica2_cesar_eduardo_meza_avila/Inicio.dart';
import 'package:dam_u2_practica2_cesar_eduardo_meza_avila/Ropa.dart';
import 'package:dam_u2_practica2_cesar_eduardo_meza_avila/Tecnologia.dart';
import 'package:flutter/material.dart';

class Practica2 extends StatefulWidget {
  const Practica2({Key? key}) : super(key: key);

  @override
  State<Practica2> createState() => _Practica2State();
}

class _Practica2State extends State<Practica2> {
  int _indice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Práctica 2", style: TextStyle(fontWeight: FontWeight.bold),), centerTitle: true, backgroundColor: Colors.green,
      actions: [
        IconButton(onPressed: (){
          showDialog(context: context,
              builder: (BuildContext context){
                return AlertDialog(
                  title: Text("¡Aguas!"),
                  content: Text("LLegó la chota"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();//Quita el cuadro de dialogo
                    }, child: Text("Ok"))
                  ],
                );
              });
        }, icon: Icon(Icons.add_alert),),
      ]),
      body: _paginas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.catching_pokemon), label: "Ropa"),
          BottomNavigationBarItem(icon: Icon(Icons.gamepad), label:"Tecnologia"),
        ],
        currentIndex: _indice,
        onTap: _cambiarIndice,
        iconSize: 30,
        //showUnselectedLabels: false,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  void _cambiarIndice(int indice){
    setState((){
      _indice = indice;
    });
  }

  final List<Widget> _paginas = [
    Inicio(),
    Ropa(),
    Tecnologia(),
  ];

  void cambiar(){
    _cambiarIndice(1);
  }
}
