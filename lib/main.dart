
import 'package:flutter/material.dart';
import 'package:holaflutter/presentation/screens/Login.dart';
import 'package:holaflutter/presentation/screens/counter_functions_screen.dart';
// import 'package:holaflutter/presentation/screens/counter_screen.dart';

void main(){
  //toda app de flutter tiene en main ejecución de un widget inicial

  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //para eliminar etiqueta debug de esquina superior derecha
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue //tema de colores
      ),
      home: //const CounterFunctionsScreen()
       Login()
    );
  }

}
