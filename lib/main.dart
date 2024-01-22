import 'package:flutter/material.dart';

import 'package:counter_app/screens/counter_screen.dart';
// import 'package:counter_app/screens/home_screen.dart';

// Main principal de la aplicación
void main(){
  runApp( const MyApp());
}

// Creación del widget
class MyApp extends StatelessWidget{
  const MyApp({super.key});

 //AQUÍ COMIENZA EL PRIMER WIDGET
  @override
  // todo WIDGET tiene un metodo BUILD
  Widget build(BuildContext context) {
    return const MaterialApp( //ESTE ES EL SEGUNDO WIDGET
      debugShowCheckedModeBanner: false, 
      // home: HomeScreen()
      home: CounterScreen(),
    );
  }

}