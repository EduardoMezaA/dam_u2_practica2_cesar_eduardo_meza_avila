import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List ropa = ["Playeras", "Pantalones", "Fake Jordans", "Gorras", "Cinto Gucci"];


class Ropa extends StatefulWidget {
  const Ropa({Key? key}) : super(key: key);

  @override
  State<Ropa> createState() => _RopaState();
}

class _RopaState extends State<Ropa> {
  String _selected = ropa.first;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(60),
      children: [
        Text("Ropa piratona y pacas xd", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.lightGreen), textAlign: TextAlign.center,),
        SizedBox(height: 30,),
        Image.asset("assets/ropa.png", width: 300, height: 300, alignment: Alignment.center,),
        SizedBox(height: 20,),
        Text("¡Todo a 10 varos!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red), textAlign: TextAlign.center,),
        SizedBox(height: 30,),
        DropdownButtonFormField(
            value: _selected,
            items: ropa.map((valor) {
              return DropdownMenuItem(child: Text(valor), value: valor,);
            }).toList(),
            onChanged: (valor) {
              setState(() {
                _selected = valor.toString();
              });
            })
      ],
    );
  }
}
