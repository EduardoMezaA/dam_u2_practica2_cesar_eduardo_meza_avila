import 'package:flutter/material.dart';

class Xd extends StatefulWidget {
  const Xd({Key? key}) : super(key: key);

  @override
  State<Xd> createState() => _XdState();
}

class _XdState extends State<Xd> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(60),
      children: [
        SizedBox(height: 70,),
        Image.asset("assets/bob toronja.gif", width: 300, height: 250, alignment: Alignment.center,),
        Padding(padding: EdgeInsets.all(10), child:
        ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: const Text("Regresar"), style: ElevatedButton.styleFrom(shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minimumSize: Size(300, 70), primary: Colors.green),),
        ),
      ],
    );
  }
}
