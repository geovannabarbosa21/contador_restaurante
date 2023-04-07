import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Contador(),
  ));
}

class Contador extends StatefulWidget {
  const Contador({ Key? key }) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int cont = 0;
  void decrement(){
    setState(() {
      if(cont>0){
      cont--;
      }
    });
    print(cont);
  }

  void increment(){
    setState(() {
      if(cont<20){
      cont++;
      }
    });
    print(cont);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 130, 174),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/restaurant.png"),
            fit: BoxFit.cover 
          )
        ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(cont < 20 ?"Pode entrar": "Lotado", style: TextStyle(fontSize:35, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),),
          Text(cont.toString(), style: TextStyle(fontSize:100, color: Color.fromARGB(255, 250, 249, 249)),), 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: decrement, style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 179, 14, 14),
                fixedSize: Size(80, 50),
                elevation: 10,
                shadowColor: const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                side: BorderSide(color: Color.fromARGB(255, 196, 129, 29), width: 3),
              ),
              child: Text("Saiu", style: TextStyle(fontSize:30, color: Color.fromARGB(255, 250, 249, 249)),),
              ),
              SizedBox(width: 15,),
              TextButton(onPressed: increment, style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 145, 14, 10),
                fixedSize: Size(110, 50),
                elevation: 10,
                shadowColor: const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                side: BorderSide(color: Color.fromARGB(255, 196, 129, 29), width: 3)
              ),
              child: Text("Entrou", style: TextStyle(fontSize:30, color: Color.fromARGB(255, 252, 252, 252)),),
              )
            ],
          )
        ],
      ),
      ),
    );
  }
}