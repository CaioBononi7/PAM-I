import 'package:flutter/material.dart';

import 'dart:math';

String sorteia() {
  final random = Random();
  return random.nextInt(100).toString();
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    final bgTela = tema.colorScheme.primary;

    final nomeController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: bgTela,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Número sorteado: ${sorteia()}"),
                  ),
                );
              },
              child: const Text("Sortear"),
            ),
          ],
        ),
      ),
    );
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Aula 3",
      home: HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
