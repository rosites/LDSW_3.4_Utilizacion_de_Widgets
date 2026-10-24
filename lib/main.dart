
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Catálogo de películas'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container: crea un recuadro.
              Container(
                width: 250,
                height: 150,
                color: Colors.blue.shade100,

                // Stack: coloca elementos uno encima de otro.
                child: const Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      Icons.movie,
                      size: 80,
                      color: Colors.blue,
                    ),
                    Positioned(
                      bottom: 10,
                      child: Text('Mis películas'),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Text: muestra un texto.
              const Text(
                'Bienvenido a mi catálogo',
                style: TextStyle(fontSize: 22),
              ),

              const SizedBox(height: 20),

              // Row: organiza elementos horizontalmente.
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.orange),
                  SizedBox(width: 10),
                  Text('Películas favoritas'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

