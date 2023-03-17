import 'package:dam_u2_practica2_cesar_eduardo_meza_avila/Ropa.dart';
import 'package:dam_u2_practica2_cesar_eduardo_meza_avila/practica2.dart';
import 'package:dam_u2_practica2_cesar_eduardo_meza_avila/xd.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        SizedBox(height: 30,),
        const Text("VENTA DE FAYUCA 'EL MORRO PRIETO'", style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.bold, color: Colors.lightGreen),textAlign: TextAlign.center,),
        SizedBox(height: 40,),
        Image.asset("assets/fayuca.png", width: 300, height: 250, alignment: Alignment.center,),
        SizedBox(height: 40,),
        Padding(padding: EdgeInsets.all(10), child:
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Xd()),
            );

          }, child: const Text("Pasele joven sin compromiso"), style: ElevatedButton.styleFrom(shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          minimumSize: Size(300, 70), primary: Colors.green),),
        ),
      ],
    );
  }
}
