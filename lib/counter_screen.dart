import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

//Clase privada
class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  final TextStyle estiloTexto = const TextStyle(
    fontSize: 30,
    color: Color.fromARGB(255, 55, 188, 214),
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Air Quality'),
        centerTitle: true,
        elevation: 10,
      ),
      backgroundColor: Color.fromARGB(255, 58, 88, 147),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hola, Bienvenido a Air Quality: ', style: estiloTexto),
            Text(
              '$contador',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                //Cambiar el estado de un widget
                contador--;
              });
              //
            },
            backgroundColor: Color.fromARGB(223, 107, 171, 11),
            foregroundColor: Color.fromARGB(255, 0, 255, 13),
            child: const Icon(Icons.exposure_minus_1),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                //Cambiar el estado de un widget
                contador = 0;
              });
              //
            },
            backgroundColor: Color.fromARGB(223, 21, 255, 0),
            foregroundColor: Color.fromARGB(255, 244, 244, 242),
            child: const Icon(Icons.restart_alt),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                //Cambiar el estado de un widget
                contador++;
              });
              //
            },
            backgroundColor: Color.fromARGB(223, 107, 171, 11),
            foregroundColor: Color.fromARGB(255, 177, 174, 14),
            child: const Icon(Icons.exposure_plus_1),
          ),
        ],
      ),
    );
  }
}
