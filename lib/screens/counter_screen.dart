import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;//contador variable
  @override
  Widget build(BuildContext context) {

    const tamanio30 =  TextStyle(fontSize: 30);

    return Scaffold( //Es un lienzo para poner opciones widgets
      // backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text('CounterScreen'),
        ),
        elevation: 20.0,
      ),

      // CUERPO DE LA APLICACIÓN
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Clicks counter', style: tamanio30),
            Text('$counter', style: tamanio30,)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // BOTÓN --
          FloatingActionButton(
            backgroundColor: Colors.blue,
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: (){
              // print('Holaaaa');
              counter--;
              setState(() {});
            }),

            // const SizedBox(width: 20), //espacio con una caja invisible

            // BOTÓN DE RESETEO
          FloatingActionButton(
            backgroundColor: Colors.blue,
            child: const Icon(Icons.exposure_zero_outlined),
            onPressed: (){
              // print('Holaaaa');
              counter=0;
              setState(() {});
            }),

          // BOTÓN DE ++
          FloatingActionButton(
            backgroundColor: Colors.blue,
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: (){
              // print('Holaaaa');
              counter++;
              setState(() {});
            }),
        ],
      ),
    );
  }
}