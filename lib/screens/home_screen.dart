import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const tamanio30 =  TextStyle(fontSize: 30);

    return Scaffold( //Es un lienzo para poner opciones widgets
      // backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text('HomeScreen'),
        ),
        elevation: 20.0,
      ),
      
      // CUERPO DE LA APLICACIÓN
      body:  const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Clicks counter', style: tamanio30),
            Text('20', style: tamanio30,)
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
        onPressed: (){
          print('Holaaaa');
        }),
    );
  }

}